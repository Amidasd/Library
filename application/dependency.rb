# frozen_string_literal: true

require 'yaml'
require 'pathname'
require 'date'
require 'ffaker'
require 'i18n'

require '../libraries/validation_errors'
require '../libraries/validation'
require '../libraries/statistics'
require '../libraries/db_utility'

require '../models/library'
require '../models/author'
require '../models/book'
require '../models/reader'
require '../models/order'

require '../view/output'

I18n.config.load_path << Dir[File.expand_path('../config/locales') + '/*.yml']
I18n.config.available_locales = :en
I18n.default_locale = :en