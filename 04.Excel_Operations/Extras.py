from prettytable import PrettyTable
from robot.libraries.BuiltIn import BuiltIn


def print_table_to_console(table, limit: int = None):
    pt = PrettyTable()
    pt.field_names = table.columns
    for index, row in enumerate(table):
        if limit and (index + 1) > limit:
            break
        pt.add_row(row.values())
    BuiltIn().log_to_console(pt)
