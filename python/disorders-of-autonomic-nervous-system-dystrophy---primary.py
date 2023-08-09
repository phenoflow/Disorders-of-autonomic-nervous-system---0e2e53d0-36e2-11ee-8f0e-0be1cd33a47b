# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2023.

import sys, csv, re

codes = [{"code":"N337.00","system":"readv2"},{"code":"N337.11","system":"readv2"},{"code":"N337.12","system":"readv2"},{"code":"N337111","system":"readv2"},{"code":"N337200","system":"readv2"},{"code":"N337300","system":"readv2"},{"code":"N337400","system":"readv2"},{"code":"N337z00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('disorders-of-autonomic-nervous-system-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["disorders-of-autonomic-nervous-system-dystrophy---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["disorders-of-autonomic-nervous-system-dystrophy---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["disorders-of-autonomic-nervous-system-dystrophy---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
