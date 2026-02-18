json.extract! schedule, :id, :title, :start_date, :end_date, :is_all_day, :memo, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
