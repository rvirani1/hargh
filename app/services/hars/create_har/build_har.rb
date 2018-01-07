class Hars::CreateHar::BuildHar
  extend LightService::Action
  expects :har_schema
  promises :har

  executed do |context|
    page = context.har_schema.to_h.dig(:log, :pages)&.first
    context.har = Har.new(
      page_timings_on_content_loaded: page&.dig(:pageTimings, :onContentLoad),
      page_timings_on_load: page&.dig(:pageTimings, :onLoad),
      raw: context.har_schema.to_h,
      started_date_time: page&.dig(:startedDateTime),
      title: page&.dig(:title)
    )
  end
end
