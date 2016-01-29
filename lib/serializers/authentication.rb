class Serializers::Authentication < Serializers::Base
  structure(:default) do |arg|
    {
      id:         arg.id,
      created_at: arg.created_at.try(:iso8601),
      updated_at: arg.updated_at.try(:iso8601),
    }
  end
end
