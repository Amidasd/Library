# frozen_string_literal: true

require 'yaml'
require 'pathname'
require 'date'
require 'faker'
require 'ffaker'

require '../config/database'
require '../config/application_errors'
require '../libraries/validation_errors'
require '../libraries/validation'
require '../libraries/statistics_library'
require '../libraries/db_utility'

require '../models/library'
require '../models/author'
require '../models/book'
require '../models/reader'
require '../models/order'

require '../view/output_library'
