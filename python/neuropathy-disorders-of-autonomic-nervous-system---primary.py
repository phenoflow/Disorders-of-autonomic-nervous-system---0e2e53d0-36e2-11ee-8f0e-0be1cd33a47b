# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2023.

import sys, csv, re

codes = [{"code":"F171000","system":"readv2"},{"code":"F171100","system":"readv2"},{"code":"FyuAC00","system":"readv2"},{"code":"103862.0","system":"med"},{"code":"105257.0","system":"med"},{"code":"10733.0","system":"med"},{"code":"16167.0","system":"med"},{"code":"16368.0","system":"med"},{"code":"16471.0","system":"med"},{"code":"16789.0","system":"med"},{"code":"17067.0","system":"med"},{"code":"22097.0","system":"med"},{"code":"22849.0","system":"med"},{"code":"2748.0","system":"med"},{"code":"30069.0","system":"med"},{"code":"30668.0","system":"med"},{"code":"31616.0","system":"med"},{"code":"33257.0","system":"med"},{"code":"40383.0","system":"med"},{"code":"4098.0","system":"med"},{"code":"41595.0","system":"med"},{"code":"45647.0","system":"med"},{"code":"49664.0","system":"med"},{"code":"50099.0","system":"med"},{"code":"5600.0","system":"med"},{"code":"56230.0","system":"med"},{"code":"57586.0","system":"med"},{"code":"61889.0","system":"med"},{"code":"62733.0","system":"med"},{"code":"70344.0","system":"med"},{"code":"7197.0","system":"med"},{"code":"72889.0","system":"med"},{"code":"93531.0","system":"med"},{"code":"95745.0","system":"med"},{"code":"95878.0","system":"med"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('disorders-of-autonomic-nervous-system-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["neuropathy-disorders-of-autonomic-nervous-system---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["neuropathy-disorders-of-autonomic-nervous-system---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["neuropathy-disorders-of-autonomic-nervous-system---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
