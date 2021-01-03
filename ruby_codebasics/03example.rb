#В этом коде используется библиотека ActiveSupport, которая расширяет язык некоторыми полезными возможностями. Изначально она была создана для Rails, но используется и за его пределами.
# frozen_string_literal: true

require 'active_support/core_ext/numeric/time'

# BEGIN (write your solution here)
puts 1.day.ago - 1.week + 3.hours
# END