json.array!(@answers) do |answer|
  json.extract! answer, :id, :score1, :score2, :score3, :score4, :score5, :score6, :score7, :score8, :score9, :score10, :score11, :score12, :score13, :score14, :score15, :score16, :score17, :score18, :score19, :score20, :score21, :score22, :score23, :score24, :score25, :score26, :score27, :score28, :score29, :score30, :score31, :score32, :score33, :score34, :score35, :score36, :score37, :score38, :score39, :score40
  json.url answer_url(answer, format: :json)
end
