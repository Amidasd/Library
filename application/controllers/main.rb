require '../dependency'

lib = Library.new
DbUtility.create_faker_db(lib)
DbUtility.save_yaml_db(lib)
lib = DbUtility.load_yaml_db
Output.show_statistic(lib)
