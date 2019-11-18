import csv
class csvLibrary(object):

    def read_csv_file(self, fileName):
        '''This creates a keyword named "Read CSV File"

        This keyword takes one argument, which is a path to a .csv file. It
        returns a list of rows, with each row being a list of the data in
        each column.
        '''
        data = []
        with open(fileName, newline='') as csvfile:
            reader = csv.reader(csvfile, delimiter=';', dialect='excel', quoting=csv.QUOTE_NONE)
            for row in reader:
                data.append(row)
        return data

    def read_csv_file_comma(self, fileName):
        data = []
        with open(fileName, newline='') as csvFile:
            reader = csv.reader(csvFile)
            for row in reader:
                data.append(row)
        return data
