# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

#set :bundle exec whenever
#set :crontab -l
#set :bundle exec whenever--update-crontab RAILS_ENV=production
#set :whenever_environment, :production

set :output, 'log/crontab.log'
#"ENV['RAILS_ENV'] ||= 'development'
ENV['RAILS_ENV'] ||= 'production'
set :environment, ENV['RAILS_ENV']

#set :environment, "development"
set :environment, "production"

every 10.minutes do  #待ち時間情報の最新度（10分ごとチェック）
  runner "Waiting.check"
end

every 1.day, at: '5:00 am' do    #毎日AM5:00に本日終了にする。
#every 1.day, at: '11:30 pm' do
  runner "Working.break_time"
end

every 1.day, at: '11:55 pm' do    #毎日PM11:55に有効確認。
#every 1.day, at: '11:30 pm' do
  runner "Working.break_time"
  runner "Contract.renewal"
end

every '0 1 1 * *' do     #毎月1日に前月の登録を無効にする。
#every '30 23 28 * *' do
  runner "Usage.use_invalid"
  runner "Contract.reset"
end