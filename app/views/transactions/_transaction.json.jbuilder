json.extract! transaction, :id, :amount, :description, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
