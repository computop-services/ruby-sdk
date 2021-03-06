=begin
Wallee API: 1.0.0

The wallee API allows an easy interaction with the wallee web service.



Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require "uri"

module Wallee
  class SubscriptionProductVersionRetirementService
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Count
    # Counts the number of items in the database as restricted by the given filter.
    # @param space_id 
    # @param [Hash] opts the optional parameters
    # @option opts [EntityQueryFilter] :filter The filter which restricts the entities which are used to calculate the count.
    # @return [Integer]
    def subscription_product_version_retirement_service_count(space_id, opts = {})
      data, _status_code, _headers = subscription_product_version_retirement_service_count_with_http_info(space_id, opts)
      return data
    end

    # Count
    # Counts the number of items in the database as restricted by the given filter.
    # @param space_id 
    # @param [Hash] opts the optional parameters
    # @option opts [EntityQueryFilter] :filter The filter which restricts the entities which are used to calculate the count.
    # @return [Array<(Integer, Fixnum, Hash)>] Integer data, response status code and response headers
    def subscription_product_version_retirement_service_count_with_http_info(space_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubscriptionProductVersionRetirementService.subscription_product_version_retirement_service_count ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling SubscriptionProductVersionRetirementService.subscription_product_version_retirement_service_count" if space_id.nil?
      # resource path
      local_var_path = "/subscription-product-version-retirement/count".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json;charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'filter'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Integer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionProductVersionRetirementService#subscription_product_version_retirement_service_count\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create
    # The create operation creates a new product version retirement.
    # @param space_id 
    # @param retirement 
    # @param [Hash] opts the optional parameters
    # @return [SubscriptionProductVersionRetirement]
    def subscription_product_version_retirement_service_create(space_id, retirement, opts = {})
      data, _status_code, _headers = subscription_product_version_retirement_service_create_with_http_info(space_id, retirement, opts)
      return data
    end

    # Create
    # The create operation creates a new product version retirement.
    # @param space_id 
    # @param retirement 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SubscriptionProductVersionRetirement, Fixnum, Hash)>] SubscriptionProductVersionRetirement data, response status code and response headers
    def subscription_product_version_retirement_service_create_with_http_info(space_id, retirement, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubscriptionProductVersionRetirementService.subscription_product_version_retirement_service_create ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling SubscriptionProductVersionRetirementService.subscription_product_version_retirement_service_create" if space_id.nil?
      # verify the required parameter 'retirement' is set
      fail ArgumentError, "Missing the required parameter 'retirement' when calling SubscriptionProductVersionRetirementService.subscription_product_version_retirement_service_create" if retirement.nil?
      # resource path
      local_var_path = "/subscription-product-version-retirement/create".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json;charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(retirement)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SubscriptionProductVersionRetirement')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionProductVersionRetirementService#subscription_product_version_retirement_service_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Read
    # Reads the entity with the given 'id' and returns it.
    # @param space_id 
    # @param id The id of the retirement which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [SubscriptionProductVersionRetirement]
    def subscription_product_version_retirement_service_read(space_id, id, opts = {})
      data, _status_code, _headers = subscription_product_version_retirement_service_read_with_http_info(space_id, id, opts)
      return data
    end

    # Read
    # Reads the entity with the given &#39;id&#39; and returns it.
    # @param space_id 
    # @param id The id of the retirement which should be returned.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SubscriptionProductVersionRetirement, Fixnum, Hash)>] SubscriptionProductVersionRetirement data, response status code and response headers
    def subscription_product_version_retirement_service_read_with_http_info(space_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubscriptionProductVersionRetirementService.subscription_product_version_retirement_service_read ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling SubscriptionProductVersionRetirementService.subscription_product_version_retirement_service_read" if space_id.nil?
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling SubscriptionProductVersionRetirementService.subscription_product_version_retirement_service_read" if id.nil?
      # resource path
      local_var_path = "/subscription-product-version-retirement/read".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id
      query_params[:'id'] = id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['*/*']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json;charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SubscriptionProductVersionRetirement')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionProductVersionRetirementService#subscription_product_version_retirement_service_read\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search
    # Searches for the entities as specified by the given query.
    # @param space_id 
    # @param query The query restricts the product version retirements which are returned by the search.
    # @param [Hash] opts the optional parameters
    # @return [Array<SubscriptionProductVersionRetirement>]
    def subscription_product_version_retirement_service_search(space_id, query, opts = {})
      data, _status_code, _headers = subscription_product_version_retirement_service_search_with_http_info(space_id, query, opts)
      return data
    end

    # Search
    # Searches for the entities as specified by the given query.
    # @param space_id 
    # @param query The query restricts the product version retirements which are returned by the search.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<SubscriptionProductVersionRetirement>, Fixnum, Hash)>] Array<SubscriptionProductVersionRetirement> data, response status code and response headers
    def subscription_product_version_retirement_service_search_with_http_info(space_id, query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SubscriptionProductVersionRetirementService.subscription_product_version_retirement_service_search ..."
      end
      # verify the required parameter 'space_id' is set
      fail ArgumentError, "Missing the required parameter 'space_id' when calling SubscriptionProductVersionRetirementService.subscription_product_version_retirement_service_search" if space_id.nil?
      # verify the required parameter 'query' is set
      fail ArgumentError, "Missing the required parameter 'query' when calling SubscriptionProductVersionRetirementService.subscription_product_version_retirement_service_search" if query.nil?
      # resource path
      local_var_path = "/subscription-product-version-retirement/search".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'spaceId'] = space_id

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json;charset=utf-8']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = ['application/json;charset=utf-8']
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(query)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<SubscriptionProductVersionRetirement>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SubscriptionProductVersionRetirementService#subscription_product_version_retirement_service_search\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
