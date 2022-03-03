json.extract! leaderboard, :id, :description, :deadline, :start_date, :end_date, :created_at, :updated_at
json.url leaderboard_url(leaderboard, format: :json)
