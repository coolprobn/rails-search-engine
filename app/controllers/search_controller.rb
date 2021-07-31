class SearchController < ApplicationController
  def search
    if params[:q].blank?
      @results = []
    else
      @results = Elasticsearch::Model
                   .search(params[:q], [], { body: highlight_fields })
                   .results.as_json
                   .group_by { |result| result['_index'] }
    end
  end

  private

  def highlight_fields
    {
      highlight: {
        pre_tags: ['<strong>'],
        post_tags: ['</strong>'],
        fields: {
          first_name: {},
          last_name: {},
          nickname: {},
          email: {},
          title: {},
          content: {}
        }
      }
    }
  end
end
