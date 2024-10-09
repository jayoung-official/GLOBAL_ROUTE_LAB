#!/usr/bin/env python3
import os
import re

# 현재 디렉토리를 기준으로 합니다.
directory = '.'

# 결과를 저장할 리스트
results = []

# 디렉토리 내의 모든 파일 목록을 가져옵니다.
files = os.listdir(directory)

# '.timing'으로 끝나는 모든 파일을 찾습니다.
timing_files = sorted([f for f in files if f.endswith('.timing')])

for timing_file in timing_files:
    # 파일명에서 '.timing'을 제거하여 베이스 이름을 얻습니다.
    base_name = timing_file[:-7]
    power_file = base_name + '.power'
    
    # 해당하는 '.power' 파일이 존재하는지 확인합니다.
    if power_file in files:
        # '.timing' 파일에서 세 개의 숫자를 추출합니다.
        numbers = []
        with open(os.path.join(directory, timing_file), 'r', encoding='utf-8') as f:
            for line in f:
                match = re.search(r'(-?\d+\.\d+):(-?\d+\.\d+):(-?\d+)', line)
                if match:
                    numbers = list(match.groups())
                    break  # 원하는 숫자를 찾았으므로 루프를 종료합니다
        
        # '.power' 파일에서 'Total Power' 값을 추출합니다.
        total_power = None
        with open(os.path.join(directory, power_file), 'r', encoding='utf-8') as f:
            for line in f:
                if line.strip().startswith('Total Power:'):
                    match = re.search(r'Total Power:\s+([-\d\.eE]+)', line)
                    if match:
                        total_power = match.group(1)
                        break  # 원하는 값을 찾았으므로 루프를 종료합니다
        
        # 결과를 리스트에 저장합니다.
        results.append({
            'Name': base_name,
            'WNS': numbers[0],
            'TNS': numbers[1],
            '#VIO': numbers[2],
            'POWER': total_power
        })
    else:
        # '.power' 파일이 없으면 스킵합니다.
        print(f"{base_name}: {power_file} 파일을 찾을 수 없어 스킵합니다.")

# 결과를 표로 출력합니다.
if results:
    # 테이블 헤더를 정의합니다.
    headers = ['Name', 'WNS', 'TNS', '#VIO', 'POWER']
    
    # 각 열의 최대 너비를 계산합니다.
    col_widths = {header: len(header) for header in headers}
    for result in results:
        for header in headers:
            col_widths[header] = max(col_widths[header], len(str(result[header])))
    
    # 테이블 헤더를 출력합니다.
    header_line = '| ' + ' | '.join(f"{header:<{col_widths[header]}}" for header in headers) + ' |'
    separator_line = '|-' + '-|-'.join('-' * col_widths[header] for header in headers) + '-|'
    print(header_line)
    print(separator_line)
    
    # 테이블 데이터를 출력합니다.
    for result in results:
        data_line = '| ' + ' | '.join(f"{str(result[header]):<{col_widths[header]}}" for header in headers) + ' |'
        print(data_line)
else:
    print("표시할 결과가 없습니다.")
