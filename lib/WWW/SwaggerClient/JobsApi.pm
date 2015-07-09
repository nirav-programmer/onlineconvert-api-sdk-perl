#
# Copyright 2015 SmartBear Software
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
#
package WWW::SwaggerClient::JobsApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::SwaggerClient::ApiClient;
use WWW::SwaggerClient::Configuration;

our @EXPORT_OK = qw(
  jobs_get 
  jobs_post 
  jobs_job_id_get 
  jobs_job_id_delete 
  jobs_job_id_patch 
  jobs_job_id_threads_get 
  
);

sub new {
    my $class   = shift;
    my $default_api_client = $WWW::SwaggerClient::Configuration::api_client ? $WWW::SwaggerClient::Configuration::api_client  : WWW::SwaggerClient::ApiClient->new;
    my (%self) = (
        'api_client' => $default_api_client,
        @_
    );

    #my $self = {
    #    #api_client => $options->{api_client}
    #    api_client => $default_api_client
    #}; 

    bless \%self, $class;

}

    
    #
    # jobs_get
    #
    # List of jobs active for the current user identified by the key.
    # 
    # @param string $status Filter the status of the job. (required)
    # @param string $token Token for authentication. (required)
    # @param string $key Api key for the user to filter. (required)
    # @param number $page Pagination for list of elements. (required)
    # @return ARRAY[Job]
    #
    sub jobs_get {
      my ($self, %args) = @_;

      

      # parse inputs
      my $_resource_path = '/jobs';
      $_resource_path =~ s/{format}/json/; # default format to json

      my $_method = 'GET';
      my $query_params = {};
      my $header_params = {};
      my $form_params = {};

      # 'Accept' and 'Content-Type' header
      my $_header_accept = $self->{api_client}->select_header_accept();
      if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
      }
      $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

      # query params
      if ( exists $args{'status'}) {
        $query_params->{'status'} = $self->{api_client}->to_query_value($args{'status'});
      }# query params
      if ( exists $args{'key'}) {
        $query_params->{'key'} = $self->{api_client}->to_query_value($args{'key'});
      }# query params
      if ( exists $args{'page'}) {
        $query_params->{'page'} = $self->{api_client}->to_query_value($args{'page'});
      }
      # header params
      if ( exists $args{'token'}) {
        $header_params->{'token'} = $self->{api_client}->to_header_value($args{'token'});
      }
      
      
      my $_body_data;
      

      # authentication setting, if any
      my $auth_settings = [];

      # make the API Call
      my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                             $query_params, $form_params,
                                             $header_params, $_body_data, $auth_settings);
      if (!$response) {
        return;
      }
      my $_response_object = $self->{api_client}->deserialize('ARRAY[Job]', $response);
      return $_response_object;
      
  }
  
    #
    # jobs_post
    #
    # Creates a new Job with the user key.
    # 
    # @param string $key Api key for the user to filter. (required)
    # @param Job $body Content of the job. (required)
    # @return Job
    #
    sub jobs_post {
      my ($self, %args) = @_;

      
      # verify the required parameter 'key' is set
      unless (exists $args{'key'}) {
        croak("Missing the required parameter 'key' when calling jobs_post");
      }
      
      # verify the required parameter 'body' is set
      unless (exists $args{'body'}) {
        croak("Missing the required parameter 'body' when calling jobs_post");
      }
      

      # parse inputs
      my $_resource_path = '/jobs';
      $_resource_path =~ s/{format}/json/; # default format to json

      my $_method = 'POST';
      my $query_params = {};
      my $header_params = {};
      my $form_params = {};

      # 'Accept' and 'Content-Type' header
      my $_header_accept = $self->{api_client}->select_header_accept();
      if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
      }
      $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

      # query params
      if ( exists $args{'key'}) {
        $query_params->{'key'} = $self->{api_client}->to_query_value($args{'key'});
      }
      
      
      
      my $_body_data;
      # body params
      if ( exists $args{'body'}) {
        $_body_data = $args{'body'};
      }

      # authentication setting, if any
      my $auth_settings = [];

      # make the API Call
      my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                             $query_params, $form_params,
                                             $header_params, $_body_data, $auth_settings);
      if (!$response) {
        return;
      }
      my $_response_object = $self->{api_client}->deserialize('Job', $response);
      return $_response_object;
      
  }
  
    #
    # jobs_job_id_get
    #
    # Get information about a Job
    # 
    # @param string $token Token for authentication. (required)
    # @param string $key Api key for the user to filter. (required)
    # @param string $job_id ID of job that needs to be fetched (required)
    # @return Job
    #
    sub jobs_job_id_get {
      my ($self, %args) = @_;

      
      # verify the required parameter 'job_id' is set
      unless (exists $args{'job_id'}) {
        croak("Missing the required parameter 'job_id' when calling jobs_job_id_get");
      }
      

      # parse inputs
      my $_resource_path = '/jobs/{job_id}';
      $_resource_path =~ s/{format}/json/; # default format to json

      my $_method = 'GET';
      my $query_params = {};
      my $header_params = {};
      my $form_params = {};

      # 'Accept' and 'Content-Type' header
      my $_header_accept = $self->{api_client}->select_header_accept();
      if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
      }
      $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

      # query params
      if ( exists $args{'key'}) {
        $query_params->{'key'} = $self->{api_client}->to_query_value($args{'key'});
      }
      # header params
      if ( exists $args{'token'}) {
        $header_params->{'token'} = $self->{api_client}->to_header_value($args{'token'});
      }
      # path params
      if ( exists $args{'job_id'}) {
        my $_base_variable = "{" . "job_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'job_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
      }
      
      my $_body_data;
      

      # authentication setting, if any
      my $auth_settings = [];

      # make the API Call
      my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                             $query_params, $form_params,
                                             $header_params, $_body_data, $auth_settings);
      if (!$response) {
        return;
      }
      my $_response_object = $self->{api_client}->deserialize('Job', $response);
      return $_response_object;
      
  }
  
    #
    # jobs_job_id_delete
    #
    # Cancels a job created that haven't been started. (Allow to cancel jobs in process.)
    # 
    # @param string $token Token for authentication. (required)
    # @param string $key Api key for the user to filter. (required)
    # @param string $job_id ID of job that needs to be fetched (required)
    # @return Job
    #
    sub jobs_job_id_delete {
      my ($self, %args) = @_;

      
      # verify the required parameter 'job_id' is set
      unless (exists $args{'job_id'}) {
        croak("Missing the required parameter 'job_id' when calling jobs_job_id_delete");
      }
      

      # parse inputs
      my $_resource_path = '/jobs/{job_id}';
      $_resource_path =~ s/{format}/json/; # default format to json

      my $_method = 'DELETE';
      my $query_params = {};
      my $header_params = {};
      my $form_params = {};

      # 'Accept' and 'Content-Type' header
      my $_header_accept = $self->{api_client}->select_header_accept();
      if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
      }
      $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

      # query params
      if ( exists $args{'key'}) {
        $query_params->{'key'} = $self->{api_client}->to_query_value($args{'key'});
      }
      # header params
      if ( exists $args{'token'}) {
        $header_params->{'token'} = $self->{api_client}->to_header_value($args{'token'});
      }
      # path params
      if ( exists $args{'job_id'}) {
        my $_base_variable = "{" . "job_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'job_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
      }
      
      my $_body_data;
      

      # authentication setting, if any
      my $auth_settings = [];

      # make the API Call
      my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                             $query_params, $form_params,
                                             $header_params, $_body_data, $auth_settings);
      if (!$response) {
        return;
      }
      my $_response_object = $self->{api_client}->deserialize('Job', $response);
      return $_response_object;
      
  }
  
    #
    # jobs_job_id_patch
    #
    # Modifies the job identified by the id, allows to start a created job.
    # 
    # @param Job $body Content of the job. (required)
    # @param string $token Token for authentication. (required)
    # @param string $key Api key for the user to filter. (required)
    # @param string $job_id ID of job that needs to be fetched (required)
    # @return Job
    #
    sub jobs_job_id_patch {
      my ($self, %args) = @_;

      
      # verify the required parameter 'body' is set
      unless (exists $args{'body'}) {
        croak("Missing the required parameter 'body' when calling jobs_job_id_patch");
      }
      
      # verify the required parameter 'job_id' is set
      unless (exists $args{'job_id'}) {
        croak("Missing the required parameter 'job_id' when calling jobs_job_id_patch");
      }
      

      # parse inputs
      my $_resource_path = '/jobs/{job_id}';
      $_resource_path =~ s/{format}/json/; # default format to json

      my $_method = 'PATCH';
      my $query_params = {};
      my $header_params = {};
      my $form_params = {};

      # 'Accept' and 'Content-Type' header
      my $_header_accept = $self->{api_client}->select_header_accept();
      if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
      }
      $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

      # query params
      if ( exists $args{'key'}) {
        $query_params->{'key'} = $self->{api_client}->to_query_value($args{'key'});
      }
      # header params
      if ( exists $args{'token'}) {
        $header_params->{'token'} = $self->{api_client}->to_header_value($args{'token'});
      }
      # path params
      if ( exists $args{'job_id'}) {
        my $_base_variable = "{" . "job_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'job_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
      }
      
      my $_body_data;
      # body params
      if ( exists $args{'body'}) {
        $_body_data = $args{'body'};
      }

      # authentication setting, if any
      my $auth_settings = [];

      # make the API Call
      my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                             $query_params, $form_params,
                                             $header_params, $_body_data, $auth_settings);
      if (!$response) {
        return;
      }
      my $_response_object = $self->{api_client}->deserialize('Job', $response);
      return $_response_object;
      
  }
  
    #
    # jobs_job_id_threads_get
    #
    # Get list of threads defined for the current job.
    # 
    # @param string $token Token for authentication. (required)
    # @param string $key Api key for the user to filter. (required)
    # @param string $job_id ID of job that needs to be fetched (required)
    # @return ARRAY[Thread]
    #
    sub jobs_job_id_threads_get {
      my ($self, %args) = @_;

      
      # verify the required parameter 'job_id' is set
      unless (exists $args{'job_id'}) {
        croak("Missing the required parameter 'job_id' when calling jobs_job_id_threads_get");
      }
      

      # parse inputs
      my $_resource_path = '/jobs/{job_id}/threads';
      $_resource_path =~ s/{format}/json/; # default format to json

      my $_method = 'GET';
      my $query_params = {};
      my $header_params = {};
      my $form_params = {};

      # 'Accept' and 'Content-Type' header
      my $_header_accept = $self->{api_client}->select_header_accept();
      if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
      }
      $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

      # query params
      if ( exists $args{'key'}) {
        $query_params->{'key'} = $self->{api_client}->to_query_value($args{'key'});
      }
      # header params
      if ( exists $args{'token'}) {
        $header_params->{'token'} = $self->{api_client}->to_header_value($args{'token'});
      }
      # path params
      if ( exists $args{'job_id'}) {
        my $_base_variable = "{" . "job_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'job_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
      }
      
      my $_body_data;
      

      # authentication setting, if any
      my $auth_settings = [];

      # make the API Call
      my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                             $query_params, $form_params,
                                             $header_params, $_body_data, $auth_settings);
      if (!$response) {
        return;
      }
      my $_response_object = $self->{api_client}->deserialize('ARRAY[Thread]', $response);
      return $_response_object;
      
  }
  


1;
