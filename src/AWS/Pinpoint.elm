module AWS.Pinpoint exposing
    ( service
    , createApp, createCampaign, createExportJob, createImportJob, createSegment, deleteAdmChannel, deleteApnsChannel
    , deleteApnsSandboxChannel, deleteApnsVoipChannel, deleteApnsVoipSandboxChannel, deleteApp, deleteBaiduChannel, deleteCampaign
    , deleteEmailChannel, deleteEndpoint, deleteEventStream, deleteGcmChannel, deleteSegment, deleteSmsChannel, deleteUserEndpoints
    , deleteVoiceChannel, getAdmChannel, getApnsChannel, getApnsSandboxChannel, getApnsVoipChannel, getApnsVoipSandboxChannel, getApp
    , getApplicationDateRangeKpi, getApplicationSettings, getApps, getBaiduChannel, getCampaign, getCampaignActivities
    , getCampaignDateRangeKpi, getCampaignVersion, getCampaignVersions, getCampaigns, getChannels, getEmailChannel, getEndpoint
    , getEventStream, getExportJob, getExportJobs, getGcmChannel, getImportJob, getImportJobs, getSegment, getSegmentExportJobs
    , getSegmentImportJobs, getSegmentVersion, getSegmentVersions, getSegments, getSmsChannel, getUserEndpoints, getVoiceChannel
    , listTagsForResource, phoneNumberValidate, putEventStream, putEvents, removeAttributes, sendMessages, sendUsersMessages, tagResource
    , untagResource, updateAdmChannel, updateApnsChannel, updateApnsSandboxChannel, updateApnsVoipChannel, updateApnsVoipSandboxChannel
    , updateApplicationSettings, updateBaiduChannel, updateCampaign, updateEmailChannel, updateEndpoint, updateEndpointsBatch
    , updateGcmChannel, updateSegment, updateSmsChannel, updateVoiceChannel
    , Action(..), ActivitiesResponse, ActivityResponse, AddressConfiguration, AdmchannelRequest, AdmchannelResponse, Admmessage
    , ApnschannelRequest, ApnschannelResponse, Apnsmessage, ApnssandboxChannelRequest, ApnssandboxChannelResponse
    , ApnsvoipChannelRequest, ApnsvoipChannelResponse, ApnsvoipSandboxChannelRequest, ApnsvoipSandboxChannelResponse
    , ApplicationDateRangeKpiResponse, ApplicationResponse, ApplicationSettingsResource, ApplicationsResponse, AttributeDimension
    , AttributeType(..), AttributesResource, BaiduChannelRequest, BaiduChannelResponse, BaiduMessage, BaseKpiResult
    , CampaignDateRangeKpiResponse, CampaignEmailMessage, CampaignEventFilter, CampaignHook, CampaignLimits, CampaignResponse
    , CampaignSmsMessage, CampaignState, CampaignStatus(..), CampaignsResponse, ChannelResponse, ChannelType(..), ChannelsResponse, CreateAppRequest
    , CreateAppResponse, CreateApplicationRequest, CreateCampaignRequest, CreateCampaignResponse, CreateExportJobRequest
    , CreateExportJobResponse, CreateImportJobRequest, CreateImportJobResponse, CreateSegmentRequest, CreateSegmentResponse
    , DefaultMessage, DefaultPushNotificationMessage, DeleteAdmChannelRequest, DeleteAdmChannelResponse, DeleteApnsChannelRequest
    , DeleteApnsChannelResponse, DeleteApnsSandboxChannelRequest, DeleteApnsSandboxChannelResponse, DeleteApnsVoipChannelRequest
    , DeleteApnsVoipChannelResponse, DeleteApnsVoipSandboxChannelRequest, DeleteApnsVoipSandboxChannelResponse, DeleteAppRequest
    , DeleteAppResponse, DeleteBaiduChannelRequest, DeleteBaiduChannelResponse, DeleteCampaignRequest, DeleteCampaignResponse
    , DeleteEmailChannelRequest, DeleteEmailChannelResponse, DeleteEndpointRequest, DeleteEndpointResponse, DeleteEventStreamRequest
    , DeleteEventStreamResponse, DeleteGcmChannelRequest, DeleteGcmChannelResponse, DeleteSegmentRequest, DeleteSegmentResponse
    , DeleteSmsChannelRequest, DeleteSmsChannelResponse, DeleteUserEndpointsRequest, DeleteUserEndpointsResponse
    , DeleteVoiceChannelRequest, DeleteVoiceChannelResponse, DeliveryStatus(..), DimensionType(..), DirectMessageConfiguration, Duration(..)
    , EmailChannelRequest, EmailChannelResponse, EmailMessage, EndpointBatchItem, EndpointBatchRequest, EndpointDemographic
    , EndpointItemResponse, EndpointLocation, EndpointMessageResult, EndpointRequest, EndpointResponse, EndpointSendConfiguration
    , EndpointUser, EndpointsResponse, Event, EventDimensions, EventItemResponse, EventStream, EventsBatch, EventsRequest, EventsResponse
    , ExportJobRequest, ExportJobResource, ExportJobResponse, ExportJobsResponse, FilterType(..), Format(..), Frequency(..), GcmchannelRequest
    , GcmchannelResponse, Gcmmessage, GetAdmChannelRequest, GetAdmChannelResponse, GetApnsChannelRequest, GetApnsChannelResponse
    , GetApnsSandboxChannelRequest, GetApnsSandboxChannelResponse, GetApnsVoipChannelRequest, GetApnsVoipChannelResponse
    , GetApnsVoipSandboxChannelRequest, GetApnsVoipSandboxChannelResponse, GetAppRequest, GetAppResponse
    , GetApplicationDateRangeKpiRequest, GetApplicationDateRangeKpiResponse, GetApplicationSettingsRequest
    , GetApplicationSettingsResponse, GetAppsRequest, GetAppsResponse, GetBaiduChannelRequest, GetBaiduChannelResponse
    , GetCampaignActivitiesRequest, GetCampaignActivitiesResponse, GetCampaignDateRangeKpiRequest, GetCampaignDateRangeKpiResponse
    , GetCampaignRequest, GetCampaignResponse, GetCampaignVersionRequest, GetCampaignVersionResponse, GetCampaignVersionsRequest
    , GetCampaignVersionsResponse, GetCampaignsRequest, GetCampaignsResponse, GetChannelsRequest, GetChannelsResponse
    , GetEmailChannelRequest, GetEmailChannelResponse, GetEndpointRequest, GetEndpointResponse, GetEventStreamRequest
    , GetEventStreamResponse, GetExportJobRequest, GetExportJobResponse, GetExportJobsRequest, GetExportJobsResponse
    , GetGcmChannelRequest, GetGcmChannelResponse, GetImportJobRequest, GetImportJobResponse, GetImportJobsRequest
    , GetImportJobsResponse, GetSegmentExportJobsRequest, GetSegmentExportJobsResponse, GetSegmentImportJobsRequest
    , GetSegmentImportJobsResponse, GetSegmentRequest, GetSegmentResponse, GetSegmentVersionRequest, GetSegmentVersionResponse
    , GetSegmentVersionsRequest, GetSegmentVersionsResponse, GetSegmentsRequest, GetSegmentsResponse, GetSmsChannelRequest
    , GetSmsChannelResponse, GetUserEndpointsRequest, GetUserEndpointsResponse, GetVoiceChannelRequest, GetVoiceChannelResponse
    , Gpscoordinates, GpspointDimension, ImportJobRequest, ImportJobResource, ImportJobResponse, ImportJobsResponse, Include(..), ItemResponse
    , JobStatus(..), ListOfActivityResponse, ListOfApplicationResponse, ListOfCampaignResponse, ListOfEndpointBatchItem
    , ListOfEndpointResponse, ListOfExportJobResponse, ListOfImportJobResponse, ListOfResultRow, ListOfResultRowValue
    , ListOfSegmentDimensions, ListOfSegmentGroup, ListOfSegmentReference, ListOfSegmentResponse, ListOfString, ListOfTreatmentResource
    , ListOfWriteTreatmentResource, ListTagsForResourceRequest, ListTagsForResourceResponse, MapOfAddressConfiguration
    , MapOfAttributeDimension, MapOfChannelResponse, MapOfDouble, MapOfEndpointMessageResult, MapOfEndpointSendConfiguration, MapOfEvent
    , MapOfEventItemResponse, MapOfEventsBatch, MapOfInteger, MapOfItemResponse, MapOfListOfString, MapOfMapOfEndpointMessageResult
    , MapOfMessageResult, MapOfMetricDimension, MapOfString, Message, MessageBody, MessageConfiguration, MessageRequest, MessageResponse
    , MessageResult, MessageType(..), MetricDimension, Mode(..), NumberValidateRequest, NumberValidateResponse, PhoneNumberValidateRequest
    , PhoneNumberValidateResponse, PublicEndpoint, PutEventStreamRequest, PutEventStreamResponse, PutEventsRequest, PutEventsResponse
    , QuietTime, RawEmail, RecencyDimension, RecencyType(..), RemoveAttributesRequest, RemoveAttributesResponse, ResultRow, ResultRowValue
    , Schedule, SegmentBehaviors, SegmentDemographics, SegmentDimensions, SegmentGroup, SegmentGroupList, SegmentImportResource
    , SegmentLocation, SegmentReference, SegmentResponse, SegmentType(..), SegmentsResponse, SendMessagesRequest, SendMessagesResponse
    , SendUsersMessageRequest, SendUsersMessageResponse, SendUsersMessagesRequest, SendUsersMessagesResponse, Session, SetDimension
    , SimpleEmail, SimpleEmailPart, SmschannelRequest, SmschannelResponse, Smsmessage, SourceType(..), TagResourceRequest, TagsModel
    , TreatmentResource, Type(..), UntagResourceRequest, UpdateAdmChannelRequest, UpdateAdmChannelResponse, UpdateApnsChannelRequest
    , UpdateApnsChannelResponse, UpdateApnsSandboxChannelRequest, UpdateApnsSandboxChannelResponse, UpdateApnsVoipChannelRequest
    , UpdateApnsVoipChannelResponse, UpdateApnsVoipSandboxChannelRequest, UpdateApnsVoipSandboxChannelResponse
    , UpdateApplicationSettingsRequest, UpdateApplicationSettingsResponse, UpdateAttributesRequest, UpdateBaiduChannelRequest
    , UpdateBaiduChannelResponse, UpdateCampaignRequest, UpdateCampaignResponse, UpdateEmailChannelRequest, UpdateEmailChannelResponse
    , UpdateEndpointRequest, UpdateEndpointResponse, UpdateEndpointsBatchRequest, UpdateEndpointsBatchResponse
    , UpdateGcmChannelRequest, UpdateGcmChannelResponse, UpdateSegmentRequest, UpdateSegmentResponse, UpdateSmsChannelRequest
    , UpdateSmsChannelResponse, UpdateVoiceChannelRequest, UpdateVoiceChannelResponse, VoiceChannelRequest, VoiceChannelResponse
    , VoiceMessage, WriteApplicationSettingsRequest, WriteCampaignRequest, WriteEventStream, WriteSegmentRequest, WriteTreatmentResource
    , action, attributeType, campaignStatus, channelType, deliveryStatus, dimensionType, duration, filterType, format, frequency, include, jobStatus
    , messageType, mode, recencyType, segmentType, sourceType, type_
    )

{-| Doc Engage API - Amazon Pinpoint API


# Service definition.

@docs service


# Service endpoints.

@docs createApp, createCampaign, createExportJob, createImportJob, createSegment, deleteAdmChannel, deleteApnsChannel
@docs deleteApnsSandboxChannel, deleteApnsVoipChannel, deleteApnsVoipSandboxChannel, deleteApp, deleteBaiduChannel, deleteCampaign
@docs deleteEmailChannel, deleteEndpoint, deleteEventStream, deleteGcmChannel, deleteSegment, deleteSmsChannel, deleteUserEndpoints
@docs deleteVoiceChannel, getAdmChannel, getApnsChannel, getApnsSandboxChannel, getApnsVoipChannel, getApnsVoipSandboxChannel, getApp
@docs getApplicationDateRangeKpi, getApplicationSettings, getApps, getBaiduChannel, getCampaign, getCampaignActivities
@docs getCampaignDateRangeKpi, getCampaignVersion, getCampaignVersions, getCampaigns, getChannels, getEmailChannel, getEndpoint
@docs getEventStream, getExportJob, getExportJobs, getGcmChannel, getImportJob, getImportJobs, getSegment, getSegmentExportJobs
@docs getSegmentImportJobs, getSegmentVersion, getSegmentVersions, getSegments, getSmsChannel, getUserEndpoints, getVoiceChannel
@docs listTagsForResource, phoneNumberValidate, putEventStream, putEvents, removeAttributes, sendMessages, sendUsersMessages, tagResource
@docs untagResource, updateAdmChannel, updateApnsChannel, updateApnsSandboxChannel, updateApnsVoipChannel, updateApnsVoipSandboxChannel
@docs updateApplicationSettings, updateBaiduChannel, updateCampaign, updateEmailChannel, updateEndpoint, updateEndpointsBatch
@docs updateGcmChannel, updateSegment, updateSmsChannel, updateVoiceChannel


# API data model.

@docs Action, ActivitiesResponse, ActivityResponse, AddressConfiguration, AdmchannelRequest, AdmchannelResponse, Admmessage
@docs ApnschannelRequest, ApnschannelResponse, Apnsmessage, ApnssandboxChannelRequest, ApnssandboxChannelResponse
@docs ApnsvoipChannelRequest, ApnsvoipChannelResponse, ApnsvoipSandboxChannelRequest, ApnsvoipSandboxChannelResponse
@docs ApplicationDateRangeKpiResponse, ApplicationResponse, ApplicationSettingsResource, ApplicationsResponse, AttributeDimension
@docs AttributeType, AttributesResource, BaiduChannelRequest, BaiduChannelResponse, BaiduMessage, BaseKpiResult
@docs CampaignDateRangeKpiResponse, CampaignEmailMessage, CampaignEventFilter, CampaignHook, CampaignLimits, CampaignResponse
@docs CampaignSmsMessage, CampaignState, CampaignStatus, CampaignsResponse, ChannelResponse, ChannelType, ChannelsResponse, CreateAppRequest
@docs CreateAppResponse, CreateApplicationRequest, CreateCampaignRequest, CreateCampaignResponse, CreateExportJobRequest
@docs CreateExportJobResponse, CreateImportJobRequest, CreateImportJobResponse, CreateSegmentRequest, CreateSegmentResponse
@docs DefaultMessage, DefaultPushNotificationMessage, DeleteAdmChannelRequest, DeleteAdmChannelResponse, DeleteApnsChannelRequest
@docs DeleteApnsChannelResponse, DeleteApnsSandboxChannelRequest, DeleteApnsSandboxChannelResponse, DeleteApnsVoipChannelRequest
@docs DeleteApnsVoipChannelResponse, DeleteApnsVoipSandboxChannelRequest, DeleteApnsVoipSandboxChannelResponse, DeleteAppRequest
@docs DeleteAppResponse, DeleteBaiduChannelRequest, DeleteBaiduChannelResponse, DeleteCampaignRequest, DeleteCampaignResponse
@docs DeleteEmailChannelRequest, DeleteEmailChannelResponse, DeleteEndpointRequest, DeleteEndpointResponse, DeleteEventStreamRequest
@docs DeleteEventStreamResponse, DeleteGcmChannelRequest, DeleteGcmChannelResponse, DeleteSegmentRequest, DeleteSegmentResponse
@docs DeleteSmsChannelRequest, DeleteSmsChannelResponse, DeleteUserEndpointsRequest, DeleteUserEndpointsResponse
@docs DeleteVoiceChannelRequest, DeleteVoiceChannelResponse, DeliveryStatus, DimensionType, DirectMessageConfiguration, Duration
@docs EmailChannelRequest, EmailChannelResponse, EmailMessage, EndpointBatchItem, EndpointBatchRequest, EndpointDemographic
@docs EndpointItemResponse, EndpointLocation, EndpointMessageResult, EndpointRequest, EndpointResponse, EndpointSendConfiguration
@docs EndpointUser, EndpointsResponse, Event, EventDimensions, EventItemResponse, EventStream, EventsBatch, EventsRequest, EventsResponse
@docs ExportJobRequest, ExportJobResource, ExportJobResponse, ExportJobsResponse, FilterType, Format, Frequency, GcmchannelRequest
@docs GcmchannelResponse, Gcmmessage, GetAdmChannelRequest, GetAdmChannelResponse, GetApnsChannelRequest, GetApnsChannelResponse
@docs GetApnsSandboxChannelRequest, GetApnsSandboxChannelResponse, GetApnsVoipChannelRequest, GetApnsVoipChannelResponse
@docs GetApnsVoipSandboxChannelRequest, GetApnsVoipSandboxChannelResponse, GetAppRequest, GetAppResponse
@docs GetApplicationDateRangeKpiRequest, GetApplicationDateRangeKpiResponse, GetApplicationSettingsRequest
@docs GetApplicationSettingsResponse, GetAppsRequest, GetAppsResponse, GetBaiduChannelRequest, GetBaiduChannelResponse
@docs GetCampaignActivitiesRequest, GetCampaignActivitiesResponse, GetCampaignDateRangeKpiRequest, GetCampaignDateRangeKpiResponse
@docs GetCampaignRequest, GetCampaignResponse, GetCampaignVersionRequest, GetCampaignVersionResponse, GetCampaignVersionsRequest
@docs GetCampaignVersionsResponse, GetCampaignsRequest, GetCampaignsResponse, GetChannelsRequest, GetChannelsResponse
@docs GetEmailChannelRequest, GetEmailChannelResponse, GetEndpointRequest, GetEndpointResponse, GetEventStreamRequest
@docs GetEventStreamResponse, GetExportJobRequest, GetExportJobResponse, GetExportJobsRequest, GetExportJobsResponse
@docs GetGcmChannelRequest, GetGcmChannelResponse, GetImportJobRequest, GetImportJobResponse, GetImportJobsRequest
@docs GetImportJobsResponse, GetSegmentExportJobsRequest, GetSegmentExportJobsResponse, GetSegmentImportJobsRequest
@docs GetSegmentImportJobsResponse, GetSegmentRequest, GetSegmentResponse, GetSegmentVersionRequest, GetSegmentVersionResponse
@docs GetSegmentVersionsRequest, GetSegmentVersionsResponse, GetSegmentsRequest, GetSegmentsResponse, GetSmsChannelRequest
@docs GetSmsChannelResponse, GetUserEndpointsRequest, GetUserEndpointsResponse, GetVoiceChannelRequest, GetVoiceChannelResponse
@docs Gpscoordinates, GpspointDimension, ImportJobRequest, ImportJobResource, ImportJobResponse, ImportJobsResponse, Include, ItemResponse
@docs JobStatus, ListOfActivityResponse, ListOfApplicationResponse, ListOfCampaignResponse, ListOfEndpointBatchItem
@docs ListOfEndpointResponse, ListOfExportJobResponse, ListOfImportJobResponse, ListOfResultRow, ListOfResultRowValue
@docs ListOfSegmentDimensions, ListOfSegmentGroup, ListOfSegmentReference, ListOfSegmentResponse, ListOfString, ListOfTreatmentResource
@docs ListOfWriteTreatmentResource, ListTagsForResourceRequest, ListTagsForResourceResponse, MapOfAddressConfiguration
@docs MapOfAttributeDimension, MapOfChannelResponse, MapOfDouble, MapOfEndpointMessageResult, MapOfEndpointSendConfiguration, MapOfEvent
@docs MapOfEventItemResponse, MapOfEventsBatch, MapOfInteger, MapOfItemResponse, MapOfListOfString, MapOfMapOfEndpointMessageResult
@docs MapOfMessageResult, MapOfMetricDimension, MapOfString, Message, MessageBody, MessageConfiguration, MessageRequest, MessageResponse
@docs MessageResult, MessageType, MetricDimension, Mode, NumberValidateRequest, NumberValidateResponse, PhoneNumberValidateRequest
@docs PhoneNumberValidateResponse, PublicEndpoint, PutEventStreamRequest, PutEventStreamResponse, PutEventsRequest, PutEventsResponse
@docs QuietTime, RawEmail, RecencyDimension, RecencyType, RemoveAttributesRequest, RemoveAttributesResponse, ResultRow, ResultRowValue
@docs Schedule, SegmentBehaviors, SegmentDemographics, SegmentDimensions, SegmentGroup, SegmentGroupList, SegmentImportResource
@docs SegmentLocation, SegmentReference, SegmentResponse, SegmentType, SegmentsResponse, SendMessagesRequest, SendMessagesResponse
@docs SendUsersMessageRequest, SendUsersMessageResponse, SendUsersMessagesRequest, SendUsersMessagesResponse, Session, SetDimension
@docs SimpleEmail, SimpleEmailPart, SmschannelRequest, SmschannelResponse, Smsmessage, SourceType, TagResourceRequest, TagsModel
@docs TreatmentResource, Type, UntagResourceRequest, UpdateAdmChannelRequest, UpdateAdmChannelResponse, UpdateApnsChannelRequest
@docs UpdateApnsChannelResponse, UpdateApnsSandboxChannelRequest, UpdateApnsSandboxChannelResponse, UpdateApnsVoipChannelRequest
@docs UpdateApnsVoipChannelResponse, UpdateApnsVoipSandboxChannelRequest, UpdateApnsVoipSandboxChannelResponse
@docs UpdateApplicationSettingsRequest, UpdateApplicationSettingsResponse, UpdateAttributesRequest, UpdateBaiduChannelRequest
@docs UpdateBaiduChannelResponse, UpdateCampaignRequest, UpdateCampaignResponse, UpdateEmailChannelRequest, UpdateEmailChannelResponse
@docs UpdateEndpointRequest, UpdateEndpointResponse, UpdateEndpointsBatchRequest, UpdateEndpointsBatchResponse
@docs UpdateGcmChannelRequest, UpdateGcmChannelResponse, UpdateSegmentRequest, UpdateSegmentResponse, UpdateSmsChannelRequest
@docs UpdateSmsChannelResponse, UpdateVoiceChannelRequest, UpdateVoiceChannelResponse, VoiceChannelRequest, VoiceChannelResponse
@docs VoiceMessage, WriteApplicationSettingsRequest, WriteCampaignRequest, WriteEventStream, WriteSegmentRequest, WriteTreatmentResource
@docs action, attributeType, campaignStatus, channelType, deliveryStatus, dimensionType, duration, filterType, format, frequency, include, jobStatus
@docs messageType, mode, recencyType, segmentType, sourceType, type_

-}

import AWS.Config
import AWS.Http
import AWS.KVDecode exposing (KVDecoder)
import AWS.KVEncode exposing (KVPairs)
import AWS.Service
import Codec exposing (Codec)
import Dict exposing (Dict)
import Enum exposing (Enum)
import Json.Decode exposing (Decoder, Value)
import Json.Decode.Pipeline as Pipeline
import Json.Encode exposing (Value)
import Json.Encode.Optional as EncodeOpt


{-| Configuration for this service.
-}
service : AWS.Config.Region -> AWS.Service.Service
service region =
    AWS.Config.defineRegional "pinpoint" "2016-12-01" AWS.Config.REST_JSON AWS.Config.SignV4 region
        |> AWS.Config.withJsonVersion "1.1"
        |> AWS.Config.withSigningName "mobiletargeting"
        |> AWS.Service.service


{-| Updates the status and settings of the voice channel for an application.
-}
updateVoiceChannel : UpdateVoiceChannelRequest -> AWS.Http.Request AWS.Http.AWSAppError UpdateVoiceChannelResponse
updateVoiceChannel req =
    let
        encoder val =
            [ ( "VoiceChannelRequest", val.voiceChannelRequest ) |> EncodeOpt.field voiceChannelRequestEncoder ]
                |> EncodeOpt.objectMaySkip

        jsonBody =
            req |> encoder |> AWS.Http.jsonBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/channels/voice"

        decoder =
            ((\voiceChannelResponseFld -> { voiceChannelResponse = voiceChannelResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "VoiceChannelResponse" voiceChannelResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "UpdateVoiceChannel" AWS.Http.PUT url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Updates the status and settings of the SMS channel for an application.
-}
updateSmsChannel : UpdateSmsChannelRequest -> AWS.Http.Request AWS.Http.AWSAppError UpdateSmsChannelResponse
updateSmsChannel req =
    let
        encoder val =
            [ ( "SMSChannelRequest", val.smschannelRequest ) |> EncodeOpt.field smschannelRequestEncoder ]
                |> EncodeOpt.objectMaySkip

        jsonBody =
            req |> encoder |> AWS.Http.jsonBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/channels/sms"

        decoder =
            ((\smschannelResponseFld -> { smschannelResponse = smschannelResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "SMSChannelResponse" smschannelResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "UpdateSmsChannel" AWS.Http.PUT url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Creates a new segment for an application or updates the configuration, dimension, and other settings for an existing segment that's associated with an application.
-}
updateSegment : UpdateSegmentRequest -> AWS.Http.Request AWS.Http.AWSAppError UpdateSegmentResponse
updateSegment req =
    let
        encoder val =
            [ ( "WriteSegmentRequest", val.writeSegmentRequest ) |> EncodeOpt.field writeSegmentRequestEncoder ]
                |> EncodeOpt.objectMaySkip

        jsonBody =
            req |> encoder |> AWS.Http.jsonBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/segments/" ++ req.segmentId

        decoder =
            ((\segmentResponseFld -> { segmentResponse = segmentResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "SegmentResponse" segmentResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "UpdateSegment" AWS.Http.PUT url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Updates the status and settings of the GCM channel for an application.
-}
updateGcmChannel : UpdateGcmChannelRequest -> AWS.Http.Request AWS.Http.AWSAppError UpdateGcmChannelResponse
updateGcmChannel req =
    let
        encoder val =
            [ ( "GCMChannelRequest", val.gcmchannelRequest ) |> EncodeOpt.field gcmchannelRequestEncoder ]
                |> EncodeOpt.objectMaySkip

        jsonBody =
            req |> encoder |> AWS.Http.jsonBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/channels/gcm"

        decoder =
            ((\gcmchannelResponseFld -> { gcmchannelResponse = gcmchannelResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "GCMChannelResponse" gcmchannelResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "UpdateGcmChannel" AWS.Http.PUT url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Creates a new batch of endpoints for an application or updates the settings and attributes of a batch of existing endpoints for an application. You can also use this operation to define custom attributes (Attributes, Metrics, and UserAttributes properties) for a batch of endpoints.
-}
updateEndpointsBatch : UpdateEndpointsBatchRequest -> AWS.Http.Request AWS.Http.AWSAppError UpdateEndpointsBatchResponse
updateEndpointsBatch req =
    let
        encoder val =
            [ ( "EndpointBatchRequest", val.endpointBatchRequest ) |> EncodeOpt.field endpointBatchRequestEncoder ]
                |> EncodeOpt.objectMaySkip

        jsonBody =
            req |> encoder |> AWS.Http.jsonBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/endpoints"

        decoder =
            ((\messageBodyFld -> { messageBody = messageBodyFld }) |> Json.Decode.succeed)
                |> Pipeline.required "MessageBody" messageBodyDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "UpdateEndpointsBatch" AWS.Http.PUT url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Creates a new endpoint for an application or updates the settings and attributes of an existing endpoint for an application. You can also use this operation to define custom attributes (Attributes, Metrics, and UserAttributes properties) for an endpoint.
-}
updateEndpoint : UpdateEndpointRequest -> AWS.Http.Request AWS.Http.AWSAppError UpdateEndpointResponse
updateEndpoint req =
    let
        encoder val =
            [ ( "EndpointRequest", val.endpointRequest ) |> EncodeOpt.field endpointRequestEncoder ]
                |> EncodeOpt.objectMaySkip

        jsonBody =
            req |> encoder |> AWS.Http.jsonBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/endpoints/" ++ req.endpointId

        decoder =
            ((\messageBodyFld -> { messageBody = messageBodyFld }) |> Json.Decode.succeed)
                |> Pipeline.required "MessageBody" messageBodyDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "UpdateEndpoint" AWS.Http.PUT url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Updates the status and settings of the email channel for an application.
-}
updateEmailChannel : UpdateEmailChannelRequest -> AWS.Http.Request AWS.Http.AWSAppError UpdateEmailChannelResponse
updateEmailChannel req =
    let
        encoder val =
            [ ( "EmailChannelRequest", val.emailChannelRequest ) |> EncodeOpt.field emailChannelRequestEncoder ]
                |> EncodeOpt.objectMaySkip

        jsonBody =
            req |> encoder |> AWS.Http.jsonBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/channels/email"

        decoder =
            ((\emailChannelResponseFld -> { emailChannelResponse = emailChannelResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "EmailChannelResponse" emailChannelResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "UpdateEmailChannel" AWS.Http.PUT url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Updates the settings for a campaign.
-}
updateCampaign : UpdateCampaignRequest -> AWS.Http.Request AWS.Http.AWSAppError UpdateCampaignResponse
updateCampaign req =
    let
        encoder val =
            [ ( "WriteCampaignRequest", val.writeCampaignRequest ) |> EncodeOpt.field writeCampaignRequestEncoder ]
                |> EncodeOpt.objectMaySkip

        jsonBody =
            req |> encoder |> AWS.Http.jsonBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/campaigns/" ++ req.campaignId

        decoder =
            ((\campaignResponseFld -> { campaignResponse = campaignResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "CampaignResponse" campaignResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "UpdateCampaign" AWS.Http.PUT url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Updates the settings of the Baidu channel for an application.
-}
updateBaiduChannel : UpdateBaiduChannelRequest -> AWS.Http.Request AWS.Http.AWSAppError UpdateBaiduChannelResponse
updateBaiduChannel req =
    let
        encoder val =
            [ ( "BaiduChannelRequest", val.baiduChannelRequest ) |> EncodeOpt.field baiduChannelRequestEncoder ]
                |> EncodeOpt.objectMaySkip

        jsonBody =
            req |> encoder |> AWS.Http.jsonBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/channels/baidu"

        decoder =
            ((\baiduChannelResponseFld -> { baiduChannelResponse = baiduChannelResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "BaiduChannelResponse" baiduChannelResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "UpdateBaiduChannel" AWS.Http.PUT url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Updates the settings for an application.
-}
updateApplicationSettings : UpdateApplicationSettingsRequest -> AWS.Http.Request AWS.Http.AWSAppError UpdateApplicationSettingsResponse
updateApplicationSettings req =
    let
        encoder val =
            [ ( "WriteApplicationSettingsRequest", val.writeApplicationSettingsRequest )
                |> EncodeOpt.field writeApplicationSettingsRequestEncoder
            ]
                |> EncodeOpt.objectMaySkip

        jsonBody =
            req |> encoder |> AWS.Http.jsonBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/settings"

        decoder =
            ((\applicationSettingsResourceFld -> { applicationSettingsResource = applicationSettingsResourceFld })
                |> Json.Decode.succeed
            )
                |> Pipeline.required "ApplicationSettingsResource" applicationSettingsResourceDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "UpdateApplicationSettings" AWS.Http.PUT url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Updates the settings for the APNs VoIP sandbox channel for an application.
-}
updateApnsVoipSandboxChannel : UpdateApnsVoipSandboxChannelRequest -> AWS.Http.Request AWS.Http.AWSAppError UpdateApnsVoipSandboxChannelResponse
updateApnsVoipSandboxChannel req =
    let
        encoder val =
            [ ( "APNSVoipSandboxChannelRequest", val.apnsvoipSandboxChannelRequest )
                |> EncodeOpt.field apnsvoipSandboxChannelRequestEncoder
            ]
                |> EncodeOpt.objectMaySkip

        jsonBody =
            req |> encoder |> AWS.Http.jsonBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/channels/apns"

        decoder =
            ((\apnsvoipSandboxChannelResponseFld ->
                { apnsvoipSandboxChannelResponse = apnsvoipSandboxChannelResponseFld }
             )
                |> Json.Decode.succeed
            )
                |> Pipeline.required "APNSVoipSandboxChannelResponse" apnsvoipSandboxChannelResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "UpdateApnsVoipSandboxChannel" AWS.Http.PUT url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Updates the APNs VoIP channel settings for an application.
-}
updateApnsVoipChannel : UpdateApnsVoipChannelRequest -> AWS.Http.Request AWS.Http.AWSAppError UpdateApnsVoipChannelResponse
updateApnsVoipChannel req =
    let
        encoder val =
            [ ( "APNSVoipChannelRequest", val.apnsvoipChannelRequest ) |> EncodeOpt.field apnsvoipChannelRequestEncoder
            ]
                |> EncodeOpt.objectMaySkip

        jsonBody =
            req |> encoder |> AWS.Http.jsonBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/channels/apns"

        decoder =
            ((\apnsvoipChannelResponseFld -> { apnsvoipChannelResponse = apnsvoipChannelResponseFld })
                |> Json.Decode.succeed
            )
                |> Pipeline.required "APNSVoipChannelResponse" apnsvoipChannelResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "UpdateApnsVoipChannel" AWS.Http.PUT url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Updates the APNs sandbox channel settings for an application.
-}
updateApnsSandboxChannel : UpdateApnsSandboxChannelRequest -> AWS.Http.Request AWS.Http.AWSAppError UpdateApnsSandboxChannelResponse
updateApnsSandboxChannel req =
    let
        encoder val =
            [ ( "APNSSandboxChannelRequest", val.apnssandboxChannelRequest )
                |> EncodeOpt.field apnssandboxChannelRequestEncoder
            ]
                |> EncodeOpt.objectMaySkip

        jsonBody =
            req |> encoder |> AWS.Http.jsonBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/channels/apns"

        decoder =
            ((\apnssandboxChannelResponseFld -> { apnssandboxChannelResponse = apnssandboxChannelResponseFld })
                |> Json.Decode.succeed
            )
                |> Pipeline.required "APNSSandboxChannelResponse" apnssandboxChannelResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "UpdateApnsSandboxChannel" AWS.Http.PUT url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Updates the APNs channel settings for an application.
-}
updateApnsChannel : UpdateApnsChannelRequest -> AWS.Http.Request AWS.Http.AWSAppError UpdateApnsChannelResponse
updateApnsChannel req =
    let
        encoder val =
            [ ( "APNSChannelRequest", val.apnschannelRequest ) |> EncodeOpt.field apnschannelRequestEncoder ]
                |> EncodeOpt.objectMaySkip

        jsonBody =
            req |> encoder |> AWS.Http.jsonBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/channels/apns"

        decoder =
            ((\apnschannelResponseFld -> { apnschannelResponse = apnschannelResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "APNSChannelResponse" apnschannelResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "UpdateApnsChannel" AWS.Http.PUT url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Updates the ADM channel settings for an application.
-}
updateAdmChannel : UpdateAdmChannelRequest -> AWS.Http.Request AWS.Http.AWSAppError UpdateAdmChannelResponse
updateAdmChannel req =
    let
        encoder val =
            [ ( "ADMChannelRequest", val.admchannelRequest ) |> EncodeOpt.field admchannelRequestEncoder ]
                |> EncodeOpt.objectMaySkip

        jsonBody =
            req |> encoder |> AWS.Http.jsonBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/channels/adm"

        decoder =
            ((\admchannelResponseFld -> { admchannelResponse = admchannelResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "ADMChannelResponse" admchannelResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "UpdateAdmChannel" AWS.Http.PUT url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Removes one or more tags (keys and values) from an application, campaign, or segment.
-}
untagResource : UntagResourceRequest -> AWS.Http.Request Never ()
untagResource req =
    let
        queryEncoder val =
            [ ( "tagKeys", val.tagKeys ) |> AWS.KVEncode.field listOfStringKVEncoder ] |> AWS.KVEncode.object

        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/tags/" ++ req.resourceArn

        decoder =
            AWS.Http.constantDecoder ()
    in
    AWS.Http.request "UntagResource" AWS.Http.DELETE url jsonBody decoder AWS.Http.neverAppErrDecoder
        |> AWS.Http.addQuery (queryEncoder req |> AWS.KVEncode.encode)


{-| Adds one or more tags (keys and values) to an application, campaign, or segment.
-}
tagResource : TagResourceRequest -> AWS.Http.Request Never ()
tagResource req =
    let
        encoder val =
            [ ( "TagsModel", val.tagsModel ) |> EncodeOpt.field (Codec.encoder tagsModelCodec) ]
                |> EncodeOpt.objectMaySkip

        jsonBody =
            req |> encoder |> AWS.Http.jsonBody

        url =
            "/v1/tags/" ++ req.resourceArn

        decoder =
            AWS.Http.constantDecoder ()
    in
    AWS.Http.request "TagResource" AWS.Http.POST url jsonBody decoder AWS.Http.neverAppErrDecoder


{-| Creates and sends a message to a list of users.
-}
sendUsersMessages : SendUsersMessagesRequest -> AWS.Http.Request AWS.Http.AWSAppError SendUsersMessagesResponse
sendUsersMessages req =
    let
        encoder val =
            [ ( "SendUsersMessageRequest", val.sendUsersMessageRequest )
                |> EncodeOpt.field sendUsersMessageRequestEncoder
            ]
                |> EncodeOpt.objectMaySkip

        jsonBody =
            req |> encoder |> AWS.Http.jsonBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/users-messages"

        decoder =
            ((\sendUsersMessageResponseFld -> { sendUsersMessageResponse = sendUsersMessageResponseFld })
                |> Json.Decode.succeed
            )
                |> Pipeline.required "SendUsersMessageResponse" sendUsersMessageResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "SendUsersMessages" AWS.Http.POST url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Creates and sends a direct message.
-}
sendMessages : SendMessagesRequest -> AWS.Http.Request AWS.Http.AWSAppError SendMessagesResponse
sendMessages req =
    let
        encoder val =
            [ ( "MessageRequest", val.messageRequest ) |> EncodeOpt.field messageRequestEncoder ]
                |> EncodeOpt.objectMaySkip

        jsonBody =
            req |> encoder |> AWS.Http.jsonBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/messages"

        decoder =
            ((\messageResponseFld -> { messageResponse = messageResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "MessageResponse" messageResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "SendMessages" AWS.Http.POST url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Removes one or more attributes, of the same attribute type, from all the endpoints that are associated with an application.
-}
removeAttributes : RemoveAttributesRequest -> AWS.Http.Request AWS.Http.AWSAppError RemoveAttributesResponse
removeAttributes req =
    let
        encoder val =
            [ ( "UpdateAttributesRequest", val.updateAttributesRequest )
                |> EncodeOpt.field updateAttributesRequestEncoder
            ]
                |> EncodeOpt.objectMaySkip

        jsonBody =
            req |> encoder |> AWS.Http.jsonBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/attributes/" ++ req.attributeType

        decoder =
            ((\attributesResourceFld -> { attributesResource = attributesResourceFld }) |> Json.Decode.succeed)
                |> Pipeline.required "AttributesResource" attributesResourceDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "RemoveAttributes" AWS.Http.PUT url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Creates a new event to record for endpoints, or creates or updates endpoint data that existing events are associated with.
-}
putEvents : PutEventsRequest -> AWS.Http.Request AWS.Http.AWSAppError PutEventsResponse
putEvents req =
    let
        encoder val =
            [ ( "EventsRequest", val.eventsRequest ) |> EncodeOpt.field eventsRequestEncoder ]
                |> EncodeOpt.objectMaySkip

        jsonBody =
            req |> encoder |> AWS.Http.jsonBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/events"

        decoder =
            ((\eventsResponseFld -> { eventsResponse = eventsResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "EventsResponse" eventsResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "PutEvents" AWS.Http.POST url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Creates a new event stream for an application or updates the settings of an existing event stream for an application.
-}
putEventStream : PutEventStreamRequest -> AWS.Http.Request AWS.Http.AWSAppError PutEventStreamResponse
putEventStream req =
    let
        encoder val =
            [ ( "WriteEventStream", val.writeEventStream ) |> EncodeOpt.field writeEventStreamEncoder ]
                |> EncodeOpt.objectMaySkip

        jsonBody =
            req |> encoder |> AWS.Http.jsonBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/eventstream"

        decoder =
            ((\eventStreamFld -> { eventStream = eventStreamFld }) |> Json.Decode.succeed)
                |> Pipeline.required "EventStream" eventStreamDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "PutEventStream" AWS.Http.POST url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Retrieves information about a phone number.
-}
phoneNumberValidate : PhoneNumberValidateRequest -> AWS.Http.Request AWS.Http.AWSAppError PhoneNumberValidateResponse
phoneNumberValidate req =
    let
        encoder val =
            [ ( "NumberValidateRequest", val.numberValidateRequest ) |> EncodeOpt.field numberValidateRequestEncoder ]
                |> EncodeOpt.objectMaySkip

        jsonBody =
            req |> encoder |> AWS.Http.jsonBody

        url =
            "/v1/phone/number/validate"

        decoder =
            ((\numberValidateResponseFld -> { numberValidateResponse = numberValidateResponseFld })
                |> Json.Decode.succeed
            )
                |> Pipeline.required "NumberValidateResponse" numberValidateResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "PhoneNumberValidate" AWS.Http.POST url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Retrieves all the tags (keys and values) that are associated with an application, campaign, or segment.
-}
listTagsForResource : ListTagsForResourceRequest -> AWS.Http.Request Never ListTagsForResourceResponse
listTagsForResource req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/tags/" ++ req.resourceArn

        decoder =
            ((\tagsModelFld -> { tagsModel = tagsModelFld }) |> Json.Decode.succeed)
                |> Pipeline.required "TagsModel" (Codec.decoder tagsModelCodec)
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "ListTagsForResource" AWS.Http.GET url jsonBody decoder AWS.Http.neverAppErrDecoder


{-| Retrieves information about the status and settings of the voice channel for an application.
-}
getVoiceChannel : GetVoiceChannelRequest -> AWS.Http.Request AWS.Http.AWSAppError GetVoiceChannelResponse
getVoiceChannel req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/channels/voice"

        decoder =
            ((\voiceChannelResponseFld -> { voiceChannelResponse = voiceChannelResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "VoiceChannelResponse" voiceChannelResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetVoiceChannel" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Retrieves information about all the endpoints that are associated with a specific user ID.
-}
getUserEndpoints : GetUserEndpointsRequest -> AWS.Http.Request AWS.Http.AWSAppError GetUserEndpointsResponse
getUserEndpoints req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/users/" ++ req.userId

        decoder =
            ((\endpointsResponseFld -> { endpointsResponse = endpointsResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "EndpointsResponse" endpointsResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetUserEndpoints" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Retrieves information about the status and settings of the SMS channel for an application.
-}
getSmsChannel : GetSmsChannelRequest -> AWS.Http.Request AWS.Http.AWSAppError GetSmsChannelResponse
getSmsChannel req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/channels/sms"

        decoder =
            ((\smschannelResponseFld -> { smschannelResponse = smschannelResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "SMSChannelResponse" smschannelResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetSmsChannel" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Retrieves information about the configuration, dimension, and other settings for all the segments that are associated with an application.
-}
getSegments : GetSegmentsRequest -> AWS.Http.Request AWS.Http.AWSAppError GetSegmentsResponse
getSegments req =
    let
        queryEncoder val =
            [ ( "token", val.token ) |> AWS.KVEncode.optional AWS.KVEncode.string val
            , ( "page-size", val.pageSize ) |> AWS.KVEncode.optional AWS.KVEncode.string val
            ]
                |> AWS.KVEncode.object

        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/segments"

        decoder =
            ((\segmentsResponseFld -> { segmentsResponse = segmentsResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "SegmentsResponse" segmentsResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetSegments" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder
        |> AWS.Http.addQuery (queryEncoder req |> AWS.KVEncode.encode)


{-| Retrieves information about the configuration, dimension, and other settings for all versions of a specific segment that's associated with an application.
-}
getSegmentVersions : GetSegmentVersionsRequest -> AWS.Http.Request AWS.Http.AWSAppError GetSegmentVersionsResponse
getSegmentVersions req =
    let
        queryEncoder val =
            [ ( "token", val.token ) |> AWS.KVEncode.optional AWS.KVEncode.string val
            , ( "page-size", val.pageSize ) |> AWS.KVEncode.optional AWS.KVEncode.string val
            ]
                |> AWS.KVEncode.object

        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/segments/" ++ req.segmentId ++ "/versions"

        decoder =
            ((\segmentsResponseFld -> { segmentsResponse = segmentsResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "SegmentsResponse" segmentsResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetSegmentVersions" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder
        |> AWS.Http.addQuery (queryEncoder req |> AWS.KVEncode.encode)


{-| Retrieves information about the configuration, dimension, and other settings for a specific version of a segment that's associated with an application.
-}
getSegmentVersion : GetSegmentVersionRequest -> AWS.Http.Request AWS.Http.AWSAppError GetSegmentVersionResponse
getSegmentVersion req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/segments/" ++ req.segmentId ++ "/versions/" ++ req.version

        decoder =
            ((\segmentResponseFld -> { segmentResponse = segmentResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "SegmentResponse" segmentResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetSegmentVersion" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Retrieves information about the status and settings of the import jobs for a segment.
-}
getSegmentImportJobs : GetSegmentImportJobsRequest -> AWS.Http.Request AWS.Http.AWSAppError GetSegmentImportJobsResponse
getSegmentImportJobs req =
    let
        queryEncoder val =
            [ ( "token", val.token ) |> AWS.KVEncode.optional AWS.KVEncode.string val
            , ( "page-size", val.pageSize ) |> AWS.KVEncode.optional AWS.KVEncode.string val
            ]
                |> AWS.KVEncode.object

        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/segments/" ++ req.segmentId ++ "/jobs/import"

        decoder =
            ((\importJobsResponseFld -> { importJobsResponse = importJobsResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "ImportJobsResponse" importJobsResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetSegmentImportJobs" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder
        |> AWS.Http.addQuery (queryEncoder req |> AWS.KVEncode.encode)


{-| Retrieves information about the status and settings of the export jobs for a segment.
-}
getSegmentExportJobs : GetSegmentExportJobsRequest -> AWS.Http.Request AWS.Http.AWSAppError GetSegmentExportJobsResponse
getSegmentExportJobs req =
    let
        queryEncoder val =
            [ ( "token", val.token ) |> AWS.KVEncode.optional AWS.KVEncode.string val
            , ( "page-size", val.pageSize ) |> AWS.KVEncode.optional AWS.KVEncode.string val
            ]
                |> AWS.KVEncode.object

        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/segments/" ++ req.segmentId ++ "/jobs/export"

        decoder =
            ((\exportJobsResponseFld -> { exportJobsResponse = exportJobsResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "ExportJobsResponse" exportJobsResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetSegmentExportJobs" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder
        |> AWS.Http.addQuery (queryEncoder req |> AWS.KVEncode.encode)


{-| Retrieves information about the configuration, dimension, and other settings for a specific segment that's associated with an application.
-}
getSegment : GetSegmentRequest -> AWS.Http.Request AWS.Http.AWSAppError GetSegmentResponse
getSegment req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/segments/" ++ req.segmentId

        decoder =
            ((\segmentResponseFld -> { segmentResponse = segmentResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "SegmentResponse" segmentResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetSegment" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Retrieves information about the status and settings of all the import jobs for an application.
-}
getImportJobs : GetImportJobsRequest -> AWS.Http.Request AWS.Http.AWSAppError GetImportJobsResponse
getImportJobs req =
    let
        queryEncoder val =
            [ ( "token", val.token ) |> AWS.KVEncode.optional AWS.KVEncode.string val
            , ( "page-size", val.pageSize ) |> AWS.KVEncode.optional AWS.KVEncode.string val
            ]
                |> AWS.KVEncode.object

        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/jobs/import"

        decoder =
            ((\importJobsResponseFld -> { importJobsResponse = importJobsResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "ImportJobsResponse" importJobsResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetImportJobs" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder
        |> AWS.Http.addQuery (queryEncoder req |> AWS.KVEncode.encode)


{-| Retrieves information about the status and settings of a specific import job for an application.
-}
getImportJob : GetImportJobRequest -> AWS.Http.Request AWS.Http.AWSAppError GetImportJobResponse
getImportJob req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/jobs/import/" ++ req.jobId

        decoder =
            ((\importJobResponseFld -> { importJobResponse = importJobResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "ImportJobResponse" importJobResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetImportJob" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Retrieves information about the status and settings of the GCM channel for an application.
-}
getGcmChannel : GetGcmChannelRequest -> AWS.Http.Request AWS.Http.AWSAppError GetGcmChannelResponse
getGcmChannel req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/channels/gcm"

        decoder =
            ((\gcmchannelResponseFld -> { gcmchannelResponse = gcmchannelResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "GCMChannelResponse" gcmchannelResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetGcmChannel" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Retrieves information about the status and settings of all the export jobs for an application.
-}
getExportJobs : GetExportJobsRequest -> AWS.Http.Request AWS.Http.AWSAppError GetExportJobsResponse
getExportJobs req =
    let
        queryEncoder val =
            [ ( "token", val.token ) |> AWS.KVEncode.optional AWS.KVEncode.string val
            , ( "page-size", val.pageSize ) |> AWS.KVEncode.optional AWS.KVEncode.string val
            ]
                |> AWS.KVEncode.object

        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/jobs/export"

        decoder =
            ((\exportJobsResponseFld -> { exportJobsResponse = exportJobsResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "ExportJobsResponse" exportJobsResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetExportJobs" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder
        |> AWS.Http.addQuery (queryEncoder req |> AWS.KVEncode.encode)


{-| Retrieves information about the status and settings of a specific export job for an application.
-}
getExportJob : GetExportJobRequest -> AWS.Http.Request AWS.Http.AWSAppError GetExportJobResponse
getExportJob req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/jobs/export/" ++ req.jobId

        decoder =
            ((\exportJobResponseFld -> { exportJobResponse = exportJobResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "ExportJobResponse" exportJobResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetExportJob" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Retrieves information about the event stream settings for an application.
-}
getEventStream : GetEventStreamRequest -> AWS.Http.Request AWS.Http.AWSAppError GetEventStreamResponse
getEventStream req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/eventstream"

        decoder =
            ((\eventStreamFld -> { eventStream = eventStreamFld }) |> Json.Decode.succeed)
                |> Pipeline.required "EventStream" eventStreamDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetEventStream" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Retrieves information about the settings and attributes of a specific endpoint for an application.
-}
getEndpoint : GetEndpointRequest -> AWS.Http.Request AWS.Http.AWSAppError GetEndpointResponse
getEndpoint req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/endpoints/" ++ req.endpointId

        decoder =
            ((\endpointResponseFld -> { endpointResponse = endpointResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "EndpointResponse" endpointResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetEndpoint" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Retrieves information about the status and settings of the email channel for an application.
-}
getEmailChannel : GetEmailChannelRequest -> AWS.Http.Request AWS.Http.AWSAppError GetEmailChannelResponse
getEmailChannel req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/channels/email"

        decoder =
            ((\emailChannelResponseFld -> { emailChannelResponse = emailChannelResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "EmailChannelResponse" emailChannelResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetEmailChannel" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Retrieves information about the history and status of each channel for an application.
-}
getChannels : GetChannelsRequest -> AWS.Http.Request AWS.Http.AWSAppError GetChannelsResponse
getChannels req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/channels"

        decoder =
            ((\channelsResponseFld -> { channelsResponse = channelsResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "ChannelsResponse" channelsResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetChannels" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Retrieves information about the status, configuration, and other settings for all the campaigns that are associated with an application.
-}
getCampaigns : GetCampaignsRequest -> AWS.Http.Request AWS.Http.AWSAppError GetCampaignsResponse
getCampaigns req =
    let
        queryEncoder val =
            [ ( "token", val.token ) |> AWS.KVEncode.optional AWS.KVEncode.string val
            , ( "page-size", val.pageSize ) |> AWS.KVEncode.optional AWS.KVEncode.string val
            ]
                |> AWS.KVEncode.object

        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/campaigns"

        decoder =
            ((\campaignsResponseFld -> { campaignsResponse = campaignsResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "CampaignsResponse" campaignsResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetCampaigns" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder
        |> AWS.Http.addQuery (queryEncoder req |> AWS.KVEncode.encode)


{-| Retrieves information about the status, configuration, and other settings for all versions of a specific campaign.
-}
getCampaignVersions : GetCampaignVersionsRequest -> AWS.Http.Request AWS.Http.AWSAppError GetCampaignVersionsResponse
getCampaignVersions req =
    let
        queryEncoder val =
            [ ( "token", val.token ) |> AWS.KVEncode.optional AWS.KVEncode.string val
            , ( "page-size", val.pageSize ) |> AWS.KVEncode.optional AWS.KVEncode.string val
            ]
                |> AWS.KVEncode.object

        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/campaigns/" ++ req.campaignId ++ "/versions"

        decoder =
            ((\campaignsResponseFld -> { campaignsResponse = campaignsResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "CampaignsResponse" campaignsResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetCampaignVersions" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder
        |> AWS.Http.addQuery (queryEncoder req |> AWS.KVEncode.encode)


{-| Retrieves information about the status, configuration, and other settings for a specific version of a campaign.
-}
getCampaignVersion : GetCampaignVersionRequest -> AWS.Http.Request AWS.Http.AWSAppError GetCampaignVersionResponse
getCampaignVersion req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/campaigns/" ++ req.campaignId ++ "/versions/" ++ req.version

        decoder =
            ((\campaignResponseFld -> { campaignResponse = campaignResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "CampaignResponse" campaignResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetCampaignVersion" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Retrieves (queries) pre-aggregated data for a standard metric that applies to a campaign.
-}
getCampaignDateRangeKpi : GetCampaignDateRangeKpiRequest -> AWS.Http.Request AWS.Http.AWSAppError GetCampaignDateRangeKpiResponse
getCampaignDateRangeKpi req =
    let
        queryEncoder val =
            [ ( "start-time", val.startTime ) |> AWS.KVEncode.optional AWS.KVEncode.string val
            , ( "page-size", val.pageSize ) |> AWS.KVEncode.optional AWS.KVEncode.string val
            , ( "next-token", val.nextToken ) |> AWS.KVEncode.optional AWS.KVEncode.string val
            , ( "end-time", val.endTime ) |> AWS.KVEncode.optional AWS.KVEncode.string val
            ]
                |> AWS.KVEncode.object

        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/campaigns/" ++ req.campaignId ++ "/kpis/daterange/" ++ req.kpiName

        decoder =
            ((\campaignDateRangeKpiResponseFld -> { campaignDateRangeKpiResponse = campaignDateRangeKpiResponseFld })
                |> Json.Decode.succeed
            )
                |> Pipeline.required "CampaignDateRangeKpiResponse" campaignDateRangeKpiResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetCampaignDateRangeKpi" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder
        |> AWS.Http.addQuery (queryEncoder req |> AWS.KVEncode.encode)


{-| Retrieves information about the activity performed by a campaign.
-}
getCampaignActivities : GetCampaignActivitiesRequest -> AWS.Http.Request AWS.Http.AWSAppError GetCampaignActivitiesResponse
getCampaignActivities req =
    let
        queryEncoder val =
            [ ( "token", val.token ) |> AWS.KVEncode.optional AWS.KVEncode.string val
            , ( "page-size", val.pageSize ) |> AWS.KVEncode.optional AWS.KVEncode.string val
            ]
                |> AWS.KVEncode.object

        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/campaigns/" ++ req.campaignId ++ "/activities"

        decoder =
            ((\activitiesResponseFld -> { activitiesResponse = activitiesResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "ActivitiesResponse" activitiesResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetCampaignActivities" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder
        |> AWS.Http.addQuery (queryEncoder req |> AWS.KVEncode.encode)


{-| Retrieves information about the status, configuration, and other settings for a campaign.
-}
getCampaign : GetCampaignRequest -> AWS.Http.Request AWS.Http.AWSAppError GetCampaignResponse
getCampaign req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/campaigns/" ++ req.campaignId

        decoder =
            ((\campaignResponseFld -> { campaignResponse = campaignResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "CampaignResponse" campaignResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetCampaign" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Retrieves information about the status and settings of the Baidu Cloud Push channel for an application.
-}
getBaiduChannel : GetBaiduChannelRequest -> AWS.Http.Request AWS.Http.AWSAppError GetBaiduChannelResponse
getBaiduChannel req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/channels/baidu"

        decoder =
            ((\baiduChannelResponseFld -> { baiduChannelResponse = baiduChannelResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "BaiduChannelResponse" baiduChannelResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetBaiduChannel" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Retrieves information about all of your applications.
-}
getApps : GetAppsRequest -> AWS.Http.Request AWS.Http.AWSAppError GetAppsResponse
getApps req =
    let
        queryEncoder val =
            [ ( "token", val.token ) |> AWS.KVEncode.optional AWS.KVEncode.string val
            , ( "page-size", val.pageSize ) |> AWS.KVEncode.optional AWS.KVEncode.string val
            ]
                |> AWS.KVEncode.object

        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps"

        decoder =
            ((\applicationsResponseFld -> { applicationsResponse = applicationsResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "ApplicationsResponse" applicationsResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetApps" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder
        |> AWS.Http.addQuery (queryEncoder req |> AWS.KVEncode.encode)


{-| Retrieves information about the settings for an application.
-}
getApplicationSettings : GetApplicationSettingsRequest -> AWS.Http.Request AWS.Http.AWSAppError GetApplicationSettingsResponse
getApplicationSettings req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/settings"

        decoder =
            ((\applicationSettingsResourceFld -> { applicationSettingsResource = applicationSettingsResourceFld })
                |> Json.Decode.succeed
            )
                |> Pipeline.required "ApplicationSettingsResource" applicationSettingsResourceDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetApplicationSettings" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Retrieves (queries) pre-aggregated data for a standard metric that applies to an application.
-}
getApplicationDateRangeKpi : GetApplicationDateRangeKpiRequest -> AWS.Http.Request AWS.Http.AWSAppError GetApplicationDateRangeKpiResponse
getApplicationDateRangeKpi req =
    let
        queryEncoder val =
            [ ( "start-time", val.startTime ) |> AWS.KVEncode.optional AWS.KVEncode.string val
            , ( "page-size", val.pageSize ) |> AWS.KVEncode.optional AWS.KVEncode.string val
            , ( "next-token", val.nextToken ) |> AWS.KVEncode.optional AWS.KVEncode.string val
            , ( "end-time", val.endTime ) |> AWS.KVEncode.optional AWS.KVEncode.string val
            ]
                |> AWS.KVEncode.object

        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/kpis/daterange/" ++ req.kpiName

        decoder =
            ((\applicationDateRangeKpiResponseFld ->
                { applicationDateRangeKpiResponse = applicationDateRangeKpiResponseFld }
             )
                |> Json.Decode.succeed
            )
                |> Pipeline.required "ApplicationDateRangeKpiResponse" applicationDateRangeKpiResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetApplicationDateRangeKpi" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder
        |> AWS.Http.addQuery (queryEncoder req |> AWS.KVEncode.encode)


{-| Retrieves information about an application.
-}
getApp : GetAppRequest -> AWS.Http.Request AWS.Http.AWSAppError GetAppResponse
getApp req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId

        decoder =
            ((\applicationResponseFld -> { applicationResponse = applicationResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "ApplicationResponse" applicationResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetApp" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Retrieves information about the status and settings of the APNs VoIP sandbox channel for an application.
-}
getApnsVoipSandboxChannel : GetApnsVoipSandboxChannelRequest -> AWS.Http.Request AWS.Http.AWSAppError GetApnsVoipSandboxChannelResponse
getApnsVoipSandboxChannel req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/channels/apns"

        decoder =
            ((\apnsvoipSandboxChannelResponseFld ->
                { apnsvoipSandboxChannelResponse = apnsvoipSandboxChannelResponseFld }
             )
                |> Json.Decode.succeed
            )
                |> Pipeline.required "APNSVoipSandboxChannelResponse" apnsvoipSandboxChannelResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetApnsVoipSandboxChannel" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Retrieves information about the status and settings of the APNs VoIP channel for an application.
-}
getApnsVoipChannel : GetApnsVoipChannelRequest -> AWS.Http.Request AWS.Http.AWSAppError GetApnsVoipChannelResponse
getApnsVoipChannel req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/channels/apns"

        decoder =
            ((\apnsvoipChannelResponseFld -> { apnsvoipChannelResponse = apnsvoipChannelResponseFld })
                |> Json.Decode.succeed
            )
                |> Pipeline.required "APNSVoipChannelResponse" apnsvoipChannelResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetApnsVoipChannel" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Retrieves information about the status and settings of the APNs sandbox channel for an application.
-}
getApnsSandboxChannel : GetApnsSandboxChannelRequest -> AWS.Http.Request AWS.Http.AWSAppError GetApnsSandboxChannelResponse
getApnsSandboxChannel req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/channels/apns"

        decoder =
            ((\apnssandboxChannelResponseFld -> { apnssandboxChannelResponse = apnssandboxChannelResponseFld })
                |> Json.Decode.succeed
            )
                |> Pipeline.required "APNSSandboxChannelResponse" apnssandboxChannelResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetApnsSandboxChannel" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Retrieves information about the status and settings of the APNs channel for an application.
-}
getApnsChannel : GetApnsChannelRequest -> AWS.Http.Request AWS.Http.AWSAppError GetApnsChannelResponse
getApnsChannel req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/channels/apns"

        decoder =
            ((\apnschannelResponseFld -> { apnschannelResponse = apnschannelResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "APNSChannelResponse" apnschannelResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetApnsChannel" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Retrieves information about the status and settings of the ADM channel for an application.
-}
getAdmChannel : GetAdmChannelRequest -> AWS.Http.Request AWS.Http.AWSAppError GetAdmChannelResponse
getAdmChannel req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/channels/adm"

        decoder =
            ((\admchannelResponseFld -> { admchannelResponse = admchannelResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "ADMChannelResponse" admchannelResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "GetAdmChannel" AWS.Http.GET url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Disables the voice channel for an application and deletes any existing settings for the channel.
-}
deleteVoiceChannel : DeleteVoiceChannelRequest -> AWS.Http.Request AWS.Http.AWSAppError DeleteVoiceChannelResponse
deleteVoiceChannel req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/channels/voice"

        decoder =
            ((\voiceChannelResponseFld -> { voiceChannelResponse = voiceChannelResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "VoiceChannelResponse" voiceChannelResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "DeleteVoiceChannel" AWS.Http.DELETE url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Deletes all the endpoints that are associated with a specific user ID.
-}
deleteUserEndpoints : DeleteUserEndpointsRequest -> AWS.Http.Request AWS.Http.AWSAppError DeleteUserEndpointsResponse
deleteUserEndpoints req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/users/" ++ req.userId

        decoder =
            ((\endpointsResponseFld -> { endpointsResponse = endpointsResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "EndpointsResponse" endpointsResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "DeleteUserEndpoints" AWS.Http.DELETE url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Disables the SMS channel for an application and deletes any existing settings for the channel.
-}
deleteSmsChannel : DeleteSmsChannelRequest -> AWS.Http.Request AWS.Http.AWSAppError DeleteSmsChannelResponse
deleteSmsChannel req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/channels/sms"

        decoder =
            ((\smschannelResponseFld -> { smschannelResponse = smschannelResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "SMSChannelResponse" smschannelResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "DeleteSmsChannel" AWS.Http.DELETE url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Deletes a segment from an application.
-}
deleteSegment : DeleteSegmentRequest -> AWS.Http.Request AWS.Http.AWSAppError DeleteSegmentResponse
deleteSegment req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/segments/" ++ req.segmentId

        decoder =
            ((\segmentResponseFld -> { segmentResponse = segmentResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "SegmentResponse" segmentResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "DeleteSegment" AWS.Http.DELETE url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Disables the GCM channel for an application and deletes any existing settings for the channel.
-}
deleteGcmChannel : DeleteGcmChannelRequest -> AWS.Http.Request AWS.Http.AWSAppError DeleteGcmChannelResponse
deleteGcmChannel req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/channels/gcm"

        decoder =
            ((\gcmchannelResponseFld -> { gcmchannelResponse = gcmchannelResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "GCMChannelResponse" gcmchannelResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "DeleteGcmChannel" AWS.Http.DELETE url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Deletes the event stream for an application.
-}
deleteEventStream : DeleteEventStreamRequest -> AWS.Http.Request AWS.Http.AWSAppError DeleteEventStreamResponse
deleteEventStream req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/eventstream"

        decoder =
            ((\eventStreamFld -> { eventStream = eventStreamFld }) |> Json.Decode.succeed)
                |> Pipeline.required "EventStream" eventStreamDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "DeleteEventStream" AWS.Http.DELETE url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Deletes an endpoint from an application.
-}
deleteEndpoint : DeleteEndpointRequest -> AWS.Http.Request AWS.Http.AWSAppError DeleteEndpointResponse
deleteEndpoint req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/endpoints/" ++ req.endpointId

        decoder =
            ((\endpointResponseFld -> { endpointResponse = endpointResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "EndpointResponse" endpointResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "DeleteEndpoint" AWS.Http.DELETE url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Disables the email channel for an application and deletes any existing settings for the channel.
-}
deleteEmailChannel : DeleteEmailChannelRequest -> AWS.Http.Request AWS.Http.AWSAppError DeleteEmailChannelResponse
deleteEmailChannel req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/channels/email"

        decoder =
            ((\emailChannelResponseFld -> { emailChannelResponse = emailChannelResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "EmailChannelResponse" emailChannelResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "DeleteEmailChannel" AWS.Http.DELETE url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Deletes a campaign from an application.
-}
deleteCampaign : DeleteCampaignRequest -> AWS.Http.Request AWS.Http.AWSAppError DeleteCampaignResponse
deleteCampaign req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/campaigns/" ++ req.campaignId

        decoder =
            ((\campaignResponseFld -> { campaignResponse = campaignResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "CampaignResponse" campaignResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "DeleteCampaign" AWS.Http.DELETE url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Disables the Baidu channel for an application and deletes any existing settings for the channel.
-}
deleteBaiduChannel : DeleteBaiduChannelRequest -> AWS.Http.Request AWS.Http.AWSAppError DeleteBaiduChannelResponse
deleteBaiduChannel req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/channels/baidu"

        decoder =
            ((\baiduChannelResponseFld -> { baiduChannelResponse = baiduChannelResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "BaiduChannelResponse" baiduChannelResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "DeleteBaiduChannel" AWS.Http.DELETE url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Deletes an application.
-}
deleteApp : DeleteAppRequest -> AWS.Http.Request AWS.Http.AWSAppError DeleteAppResponse
deleteApp req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId

        decoder =
            ((\applicationResponseFld -> { applicationResponse = applicationResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "ApplicationResponse" applicationResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "DeleteApp" AWS.Http.DELETE url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Disables the APNs VoIP sandbox channel for an application and deletes any existing settings for the channel.
-}
deleteApnsVoipSandboxChannel : DeleteApnsVoipSandboxChannelRequest -> AWS.Http.Request AWS.Http.AWSAppError DeleteApnsVoipSandboxChannelResponse
deleteApnsVoipSandboxChannel req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/channels/apns"

        decoder =
            ((\apnsvoipSandboxChannelResponseFld ->
                { apnsvoipSandboxChannelResponse = apnsvoipSandboxChannelResponseFld }
             )
                |> Json.Decode.succeed
            )
                |> Pipeline.required "APNSVoipSandboxChannelResponse" apnsvoipSandboxChannelResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "DeleteApnsVoipSandboxChannel" AWS.Http.DELETE url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Disables the APNs VoIP channel for an application and deletes any existing settings for the channel.
-}
deleteApnsVoipChannel : DeleteApnsVoipChannelRequest -> AWS.Http.Request AWS.Http.AWSAppError DeleteApnsVoipChannelResponse
deleteApnsVoipChannel req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/channels/apns"

        decoder =
            ((\apnsvoipChannelResponseFld -> { apnsvoipChannelResponse = apnsvoipChannelResponseFld })
                |> Json.Decode.succeed
            )
                |> Pipeline.required "APNSVoipChannelResponse" apnsvoipChannelResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "DeleteApnsVoipChannel" AWS.Http.DELETE url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Disables the APNs sandbox channel for an application and deletes any existing settings for the channel.
-}
deleteApnsSandboxChannel : DeleteApnsSandboxChannelRequest -> AWS.Http.Request AWS.Http.AWSAppError DeleteApnsSandboxChannelResponse
deleteApnsSandboxChannel req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/channels/apns"

        decoder =
            ((\apnssandboxChannelResponseFld -> { apnssandboxChannelResponse = apnssandboxChannelResponseFld })
                |> Json.Decode.succeed
            )
                |> Pipeline.required "APNSSandboxChannelResponse" apnssandboxChannelResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "DeleteApnsSandboxChannel" AWS.Http.DELETE url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Disables the APNs channel for an application and deletes any existing settings for the channel.
-}
deleteApnsChannel : DeleteApnsChannelRequest -> AWS.Http.Request AWS.Http.AWSAppError DeleteApnsChannelResponse
deleteApnsChannel req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/channels/apns"

        decoder =
            ((\apnschannelResponseFld -> { apnschannelResponse = apnschannelResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "APNSChannelResponse" apnschannelResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "DeleteApnsChannel" AWS.Http.DELETE url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Disables the ADM channel for an application and deletes any existing settings for the channel.
-}
deleteAdmChannel : DeleteAdmChannelRequest -> AWS.Http.Request AWS.Http.AWSAppError DeleteAdmChannelResponse
deleteAdmChannel req =
    let
        jsonBody =
            AWS.Http.emptyBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/channels/adm"

        decoder =
            ((\admchannelResponseFld -> { admchannelResponse = admchannelResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "ADMChannelResponse" admchannelResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "DeleteAdmChannel" AWS.Http.DELETE url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Creates a new segment for an application or updates the configuration, dimension, and other settings for an existing segment that's associated with an application.
-}
createSegment : CreateSegmentRequest -> AWS.Http.Request AWS.Http.AWSAppError CreateSegmentResponse
createSegment req =
    let
        encoder val =
            [ ( "WriteSegmentRequest", val.writeSegmentRequest ) |> EncodeOpt.field writeSegmentRequestEncoder ]
                |> EncodeOpt.objectMaySkip

        jsonBody =
            req |> encoder |> AWS.Http.jsonBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/segments"

        decoder =
            ((\segmentResponseFld -> { segmentResponse = segmentResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "SegmentResponse" segmentResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "CreateSegment" AWS.Http.POST url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Creates a new import job for an application.
-}
createImportJob : CreateImportJobRequest -> AWS.Http.Request AWS.Http.AWSAppError CreateImportJobResponse
createImportJob req =
    let
        encoder val =
            [ ( "ImportJobRequest", val.importJobRequest ) |> EncodeOpt.field importJobRequestEncoder ]
                |> EncodeOpt.objectMaySkip

        jsonBody =
            req |> encoder |> AWS.Http.jsonBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/jobs/import"

        decoder =
            ((\importJobResponseFld -> { importJobResponse = importJobResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "ImportJobResponse" importJobResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "CreateImportJob" AWS.Http.POST url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Creates a new export job for an application.
-}
createExportJob : CreateExportJobRequest -> AWS.Http.Request AWS.Http.AWSAppError CreateExportJobResponse
createExportJob req =
    let
        encoder val =
            [ ( "ExportJobRequest", val.exportJobRequest ) |> EncodeOpt.field exportJobRequestEncoder ]
                |> EncodeOpt.objectMaySkip

        jsonBody =
            req |> encoder |> AWS.Http.jsonBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/jobs/export"

        decoder =
            ((\exportJobResponseFld -> { exportJobResponse = exportJobResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "ExportJobResponse" exportJobResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "CreateExportJob" AWS.Http.POST url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Creates a new campaign for an application or updates the settings of an existing campaign for an application.
-}
createCampaign : CreateCampaignRequest -> AWS.Http.Request AWS.Http.AWSAppError CreateCampaignResponse
createCampaign req =
    let
        encoder val =
            [ ( "WriteCampaignRequest", val.writeCampaignRequest ) |> EncodeOpt.field writeCampaignRequestEncoder ]
                |> EncodeOpt.objectMaySkip

        jsonBody =
            req |> encoder |> AWS.Http.jsonBody

        url =
            "/v1/apps/" ++ req.applicationId ++ "/campaigns"

        decoder =
            ((\campaignResponseFld -> { campaignResponse = campaignResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "CampaignResponse" campaignResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "CreateCampaign" AWS.Http.POST url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| Creates an application.
-}
createApp : CreateAppRequest -> AWS.Http.Request AWS.Http.AWSAppError CreateAppResponse
createApp req =
    let
        encoder val =
            [ ( "CreateApplicationRequest", val.createApplicationRequest )
                |> EncodeOpt.field createApplicationRequestEncoder
            ]
                |> EncodeOpt.objectMaySkip

        jsonBody =
            req |> encoder |> AWS.Http.jsonBody

        url =
            "/v1/apps"

        decoder =
            ((\applicationResponseFld -> { applicationResponse = applicationResponseFld }) |> Json.Decode.succeed)
                |> Pipeline.required "ApplicationResponse" applicationResponseDecoder
                |> AWS.Http.jsonBodyDecoder
    in
    AWS.Http.request "CreateApp" AWS.Http.POST url jsonBody decoder AWS.Http.awsAppErrDecoder


{-| The WriteTreatmentResource data model.
-}
type alias WriteTreatmentResource =
    { messageConfiguration : Maybe MessageConfiguration
    , schedule : Maybe Schedule
    , sizePercent : Int
    , treatmentDescription : Maybe String
    , treatmentName : Maybe String
    }


{-| The WriteSegmentRequest data model.
-}
type alias WriteSegmentRequest =
    { dimensions : Maybe SegmentDimensions
    , name : Maybe String
    , segmentGroups : Maybe SegmentGroupList
    , tags : Maybe MapOfString
    }


{-| The WriteEventStream data model.
-}
type alias WriteEventStream =
    { destinationStreamArn : String, roleArn : String }


{-| The WriteCampaignRequest data model.
-}
type alias WriteCampaignRequest =
    { additionalTreatments : Maybe ListOfWriteTreatmentResource
    , description : Maybe String
    , holdoutPercent : Maybe Int
    , hook : Maybe CampaignHook
    , isPaused : Maybe Bool
    , limits : Maybe CampaignLimits
    , messageConfiguration : Maybe MessageConfiguration
    , name : Maybe String
    , schedule : Maybe Schedule
    , segmentId : Maybe String
    , segmentVersion : Maybe Int
    , treatmentDescription : Maybe String
    , treatmentName : Maybe String
    , tags : Maybe MapOfString
    }


{-| The WriteApplicationSettingsRequest data model.
-}
type alias WriteApplicationSettingsRequest =
    { campaignHook : Maybe CampaignHook
    , cloudWatchMetricsEnabled : Maybe Bool
    , limits : Maybe CampaignLimits
    , quietTime : Maybe QuietTime
    }


{-| The VoiceMessage data model.
-}
type alias VoiceMessage =
    { body : Maybe String
    , languageCode : Maybe String
    , originationNumber : Maybe String
    , substitutions : Maybe MapOfListOfString
    , voiceId : Maybe String
    }


{-| The VoiceChannelResponse data model.
-}
type alias VoiceChannelResponse =
    { applicationId : Maybe String
    , creationDate : Maybe String
    , enabled : Maybe Bool
    , hasCredential : Maybe Bool
    , id : Maybe String
    , isArchived : Maybe Bool
    , lastModifiedBy : Maybe String
    , lastModifiedDate : Maybe String
    , platform : String
    , version : Maybe Int
    }


{-| The VoiceChannelRequest data model.
-}
type alias VoiceChannelRequest =
    { enabled : Maybe Bool }


{-| The UpdateVoiceChannelResponse data model.
-}
type alias UpdateVoiceChannelResponse =
    { voiceChannelResponse : VoiceChannelResponse }


{-| The UpdateVoiceChannelRequest data model.
-}
type alias UpdateVoiceChannelRequest =
    { applicationId : String, voiceChannelRequest : VoiceChannelRequest }


{-| The UpdateSmsChannelResponse data model.
-}
type alias UpdateSmsChannelResponse =
    { smschannelResponse : SmschannelResponse }


{-| The UpdateSmsChannelRequest data model.
-}
type alias UpdateSmsChannelRequest =
    { applicationId : String, smschannelRequest : SmschannelRequest }


{-| The UpdateSegmentResponse data model.
-}
type alias UpdateSegmentResponse =
    { segmentResponse : SegmentResponse }


{-| The UpdateSegmentRequest data model.
-}
type alias UpdateSegmentRequest =
    { applicationId : String, segmentId : String, writeSegmentRequest : WriteSegmentRequest }


{-| The UpdateGcmChannelResponse data model.
-}
type alias UpdateGcmChannelResponse =
    { gcmchannelResponse : GcmchannelResponse }


{-| The UpdateGcmChannelRequest data model.
-}
type alias UpdateGcmChannelRequest =
    { applicationId : String, gcmchannelRequest : GcmchannelRequest }


{-| The UpdateEndpointsBatchResponse data model.
-}
type alias UpdateEndpointsBatchResponse =
    { messageBody : MessageBody }


{-| The UpdateEndpointsBatchRequest data model.
-}
type alias UpdateEndpointsBatchRequest =
    { applicationId : String, endpointBatchRequest : EndpointBatchRequest }


{-| The UpdateEndpointResponse data model.
-}
type alias UpdateEndpointResponse =
    { messageBody : MessageBody }


{-| The UpdateEndpointRequest data model.
-}
type alias UpdateEndpointRequest =
    { applicationId : String, endpointId : String, endpointRequest : EndpointRequest }


{-| The UpdateEmailChannelResponse data model.
-}
type alias UpdateEmailChannelResponse =
    { emailChannelResponse : EmailChannelResponse }


{-| The UpdateEmailChannelRequest data model.
-}
type alias UpdateEmailChannelRequest =
    { applicationId : String, emailChannelRequest : EmailChannelRequest }


{-| The UpdateCampaignResponse data model.
-}
type alias UpdateCampaignResponse =
    { campaignResponse : CampaignResponse }


{-| The UpdateCampaignRequest data model.
-}
type alias UpdateCampaignRequest =
    { applicationId : String, campaignId : String, writeCampaignRequest : WriteCampaignRequest }


{-| The UpdateBaiduChannelResponse data model.
-}
type alias UpdateBaiduChannelResponse =
    { baiduChannelResponse : BaiduChannelResponse }


{-| The UpdateBaiduChannelRequest data model.
-}
type alias UpdateBaiduChannelRequest =
    { applicationId : String, baiduChannelRequest : BaiduChannelRequest }


{-| The UpdateAttributesRequest data model.
-}
type alias UpdateAttributesRequest =
    { blacklist : Maybe ListOfString }


{-| The UpdateApplicationSettingsResponse data model.
-}
type alias UpdateApplicationSettingsResponse =
    { applicationSettingsResource : ApplicationSettingsResource }


{-| The UpdateApplicationSettingsRequest data model.
-}
type alias UpdateApplicationSettingsRequest =
    { applicationId : String, writeApplicationSettingsRequest : WriteApplicationSettingsRequest }


{-| The UpdateApnsVoipSandboxChannelResponse data model.
-}
type alias UpdateApnsVoipSandboxChannelResponse =
    { apnsvoipSandboxChannelResponse : ApnsvoipSandboxChannelResponse }


{-| The UpdateApnsVoipSandboxChannelRequest data model.
-}
type alias UpdateApnsVoipSandboxChannelRequest =
    { apnsvoipSandboxChannelRequest : ApnsvoipSandboxChannelRequest, applicationId : String }


{-| The UpdateApnsVoipChannelResponse data model.
-}
type alias UpdateApnsVoipChannelResponse =
    { apnsvoipChannelResponse : ApnsvoipChannelResponse }


{-| The UpdateApnsVoipChannelRequest data model.
-}
type alias UpdateApnsVoipChannelRequest =
    { apnsvoipChannelRequest : ApnsvoipChannelRequest, applicationId : String }


{-| The UpdateApnsSandboxChannelResponse data model.
-}
type alias UpdateApnsSandboxChannelResponse =
    { apnssandboxChannelResponse : ApnssandboxChannelResponse }


{-| The UpdateApnsSandboxChannelRequest data model.
-}
type alias UpdateApnsSandboxChannelRequest =
    { apnssandboxChannelRequest : ApnssandboxChannelRequest, applicationId : String }


{-| The UpdateApnsChannelResponse data model.
-}
type alias UpdateApnsChannelResponse =
    { apnschannelResponse : ApnschannelResponse }


{-| The UpdateApnsChannelRequest data model.
-}
type alias UpdateApnsChannelRequest =
    { apnschannelRequest : ApnschannelRequest, applicationId : String }


{-| The UpdateAdmChannelResponse data model.
-}
type alias UpdateAdmChannelResponse =
    { admchannelResponse : AdmchannelResponse }


{-| The UpdateAdmChannelRequest data model.
-}
type alias UpdateAdmChannelRequest =
    { admchannelRequest : AdmchannelRequest, applicationId : String }


{-| The UntagResourceRequest data model.
-}
type alias UntagResourceRequest =
    { resourceArn : String, tagKeys : ListOfString }


{-| The Type data model.
-}
type Type
    = TypeAll
    | TypeAny
    | TypeNone


{-| The Type data model.
-}
type_ : Enum Type
type_ =
    Enum.define
        [ TypeAll, TypeAny, TypeNone ]
        (\val ->
            case val of
                TypeAll ->
                    "ALL"

                TypeAny ->
                    "ANY"

                TypeNone ->
                    "NONE"
        )


{-| The TreatmentResource data model.
-}
type alias TreatmentResource =
    { id : String
    , messageConfiguration : Maybe MessageConfiguration
    , schedule : Maybe Schedule
    , sizePercent : Int
    , state : Maybe CampaignState
    , treatmentDescription : Maybe String
    , treatmentName : Maybe String
    }


{-| The TagsModel data model.
-}
type alias TagsModel =
    { tags : MapOfString }


{-| The TagResourceRequest data model.
-}
type alias TagResourceRequest =
    { resourceArn : String, tagsModel : TagsModel }


{-| The SourceType data model.
-}
type SourceType
    = SourceTypeAll
    | SourceTypeAny
    | SourceTypeNone


{-| The SourceType data model.
-}
sourceType : Enum SourceType
sourceType =
    Enum.define
        [ SourceTypeAll, SourceTypeAny, SourceTypeNone ]
        (\val ->
            case val of
                SourceTypeAll ->
                    "ALL"

                SourceTypeAny ->
                    "ANY"

                SourceTypeNone ->
                    "NONE"
        )


{-| The SimpleEmailPart data model.
-}
type alias SimpleEmailPart =
    { charset : Maybe String, data : Maybe String }


{-| The SimpleEmail data model.
-}
type alias SimpleEmail =
    { htmlPart : Maybe SimpleEmailPart, subject : Maybe SimpleEmailPart, textPart : Maybe SimpleEmailPart }


{-| The SetDimension data model.
-}
type alias SetDimension =
    { dimensionType : Maybe DimensionType, values : ListOfString }


{-| The Session data model.
-}
type alias Session =
    { duration : Maybe Int, id : String, startTimestamp : String, stopTimestamp : Maybe String }


{-| The SendUsersMessagesResponse data model.
-}
type alias SendUsersMessagesResponse =
    { sendUsersMessageResponse : SendUsersMessageResponse }


{-| The SendUsersMessagesRequest data model.
-}
type alias SendUsersMessagesRequest =
    { applicationId : String, sendUsersMessageRequest : SendUsersMessageRequest }


{-| The SendUsersMessageResponse data model.
-}
type alias SendUsersMessageResponse =
    { applicationId : String, requestId : Maybe String, result : Maybe MapOfMapOfEndpointMessageResult }


{-| The SendUsersMessageRequest data model.
-}
type alias SendUsersMessageRequest =
    { context : Maybe MapOfString
    , messageConfiguration : DirectMessageConfiguration
    , traceId : Maybe String
    , users : MapOfEndpointSendConfiguration
    }


{-| The SendMessagesResponse data model.
-}
type alias SendMessagesResponse =
    { messageResponse : MessageResponse }


{-| The SendMessagesRequest data model.
-}
type alias SendMessagesRequest =
    { applicationId : String, messageRequest : MessageRequest }


{-| The SegmentsResponse data model.
-}
type alias SegmentsResponse =
    { item : ListOfSegmentResponse, nextToken : Maybe String }


{-| The SegmentType data model.
-}
type SegmentType
    = SegmentTypeDimensional
    | SegmentTypeImport


{-| The SegmentType data model.
-}
segmentType : Enum SegmentType
segmentType =
    Enum.define
        [ SegmentTypeDimensional, SegmentTypeImport ]
        (\val ->
            case val of
                SegmentTypeDimensional ->
                    "DIMENSIONAL"

                SegmentTypeImport ->
                    "IMPORT"
        )


{-| The SegmentResponse data model.
-}
type alias SegmentResponse =
    { applicationId : String
    , arn : String
    , creationDate : String
    , dimensions : Maybe SegmentDimensions
    , id : String
    , importDefinition : Maybe SegmentImportResource
    , lastModifiedDate : Maybe String
    , name : Maybe String
    , segmentGroups : Maybe SegmentGroupList
    , segmentType : SegmentType
    , version : Maybe Int
    , tags : Maybe MapOfString
    }


{-| The SegmentReference data model.
-}
type alias SegmentReference =
    { id : String, version : Maybe Int }


{-| The SegmentLocation data model.
-}
type alias SegmentLocation =
    { country : Maybe SetDimension, gpspoint : Maybe GpspointDimension }


{-| The SegmentImportResource data model.
-}
type alias SegmentImportResource =
    { channelCounts : Maybe MapOfInteger
    , externalId : String
    , format : Format
    , roleArn : String
    , s3Url : String
    , size : Int
    }


{-| The SegmentGroupList data model.
-}
type alias SegmentGroupList =
    { groups : Maybe ListOfSegmentGroup, include : Maybe Include }


{-| The SegmentGroup data model.
-}
type alias SegmentGroup =
    { dimensions : Maybe ListOfSegmentDimensions
    , sourceSegments : Maybe ListOfSegmentReference
    , sourceType : Maybe SourceType
    , type_ : Maybe Type
    }


{-| The SegmentDimensions data model.
-}
type alias SegmentDimensions =
    { attributes : Maybe MapOfAttributeDimension
    , behavior : Maybe SegmentBehaviors
    , demographic : Maybe SegmentDemographics
    , location : Maybe SegmentLocation
    , metrics : Maybe MapOfMetricDimension
    , userAttributes : Maybe MapOfAttributeDimension
    }


{-| The SegmentDemographics data model.
-}
type alias SegmentDemographics =
    { appVersion : Maybe SetDimension
    , channel : Maybe SetDimension
    , deviceType : Maybe SetDimension
    , make : Maybe SetDimension
    , model : Maybe SetDimension
    , platform : Maybe SetDimension
    }


{-| The SegmentBehaviors data model.
-}
type alias SegmentBehaviors =
    { recency : Maybe RecencyDimension }


{-| The Schedule data model.
-}
type alias Schedule =
    { endTime : Maybe String
    , eventFilter : Maybe CampaignEventFilter
    , frequency : Maybe Frequency
    , isLocalTime : Maybe Bool
    , quietTime : Maybe QuietTime
    , startTime : String
    , timezone : Maybe String
    }


{-| The Smsmessage data model.
-}
type alias Smsmessage =
    { body : Maybe String
    , keyword : Maybe String
    , messageType : Maybe MessageType
    , originationNumber : Maybe String
    , senderId : Maybe String
    , substitutions : Maybe MapOfListOfString
    }


{-| The SmschannelResponse data model.
-}
type alias SmschannelResponse =
    { applicationId : Maybe String
    , creationDate : Maybe String
    , enabled : Maybe Bool
    , hasCredential : Maybe Bool
    , id : Maybe String
    , isArchived : Maybe Bool
    , lastModifiedBy : Maybe String
    , lastModifiedDate : Maybe String
    , platform : String
    , promotionalMessagesPerSecond : Maybe Int
    , senderId : Maybe String
    , shortCode : Maybe String
    , transactionalMessagesPerSecond : Maybe Int
    , version : Maybe Int
    }


{-| The SmschannelRequest data model.
-}
type alias SmschannelRequest =
    { enabled : Maybe Bool, senderId : Maybe String, shortCode : Maybe String }


{-| The ResultRowValue data model.
-}
type alias ResultRowValue =
    { key : String, type_ : String, value : String }


{-| The ResultRow data model.
-}
type alias ResultRow =
    { groupedBys : ListOfResultRowValue, values : ListOfResultRowValue }


{-| The RemoveAttributesResponse data model.
-}
type alias RemoveAttributesResponse =
    { attributesResource : AttributesResource }


{-| The RemoveAttributesRequest data model.
-}
type alias RemoveAttributesRequest =
    { applicationId : String, attributeType : String, updateAttributesRequest : UpdateAttributesRequest }


{-| The RecencyType data model.
-}
type RecencyType
    = RecencyTypeActive
    | RecencyTypeInactive


{-| The RecencyType data model.
-}
recencyType : Enum RecencyType
recencyType =
    Enum.define
        [ RecencyTypeActive, RecencyTypeInactive ]
        (\val ->
            case val of
                RecencyTypeActive ->
                    "ACTIVE"

                RecencyTypeInactive ->
                    "INACTIVE"
        )


{-| The RecencyDimension data model.
-}
type alias RecencyDimension =
    { duration : Duration, recencyType : RecencyType }


{-| The RawEmail data model.
-}
type alias RawEmail =
    { data : Maybe String }


{-| The QuietTime data model.
-}
type alias QuietTime =
    { end : Maybe String, start : Maybe String }


{-| The PutEventsResponse data model.
-}
type alias PutEventsResponse =
    { eventsResponse : EventsResponse }


{-| The PutEventsRequest data model.
-}
type alias PutEventsRequest =
    { applicationId : String, eventsRequest : EventsRequest }


{-| The PutEventStreamResponse data model.
-}
type alias PutEventStreamResponse =
    { eventStream : EventStream }


{-| The PutEventStreamRequest data model.
-}
type alias PutEventStreamRequest =
    { applicationId : String, writeEventStream : WriteEventStream }


{-| The PublicEndpoint data model.
-}
type alias PublicEndpoint =
    { address : Maybe String
    , attributes : Maybe MapOfListOfString
    , channelType : Maybe ChannelType
    , demographic : Maybe EndpointDemographic
    , effectiveDate : Maybe String
    , endpointStatus : Maybe String
    , location : Maybe EndpointLocation
    , metrics : Maybe MapOfDouble
    , optOut : Maybe String
    , requestId : Maybe String
    , user : Maybe EndpointUser
    }


{-| The PhoneNumberValidateResponse data model.
-}
type alias PhoneNumberValidateResponse =
    { numberValidateResponse : NumberValidateResponse }


{-| The PhoneNumberValidateRequest data model.
-}
type alias PhoneNumberValidateRequest =
    { numberValidateRequest : NumberValidateRequest }


{-| The NumberValidateResponse data model.
-}
type alias NumberValidateResponse =
    { carrier : Maybe String
    , city : Maybe String
    , cleansedPhoneNumberE164 : Maybe String
    , cleansedPhoneNumberNational : Maybe String
    , country : Maybe String
    , countryCodeIso2 : Maybe String
    , countryCodeNumeric : Maybe String
    , county : Maybe String
    , originalCountryCodeIso2 : Maybe String
    , originalPhoneNumber : Maybe String
    , phoneType : Maybe String
    , phoneTypeCode : Maybe Int
    , timezone : Maybe String
    , zipCode : Maybe String
    }


{-| The NumberValidateRequest data model.
-}
type alias NumberValidateRequest =
    { isoCountryCode : Maybe String, phoneNumber : Maybe String }


{-| The Mode data model.
-}
type Mode
    = ModeDelivery
    | ModeFilter


{-| The Mode data model.
-}
mode : Enum Mode
mode =
    Enum.define
        [ ModeDelivery, ModeFilter ]
        (\val ->
            case val of
                ModeDelivery ->
                    "DELIVERY"

                ModeFilter ->
                    "FILTER"
        )


{-| The MetricDimension data model.
-}
type alias MetricDimension =
    { comparisonOperator : String, value : Float }


{-| The MessageType data model.
-}
type MessageType
    = MessageTypeTransactional
    | MessageTypePromotional


{-| The MessageType data model.
-}
messageType : Enum MessageType
messageType =
    Enum.define
        [ MessageTypeTransactional, MessageTypePromotional ]
        (\val ->
            case val of
                MessageTypeTransactional ->
                    "TRANSACTIONAL"

                MessageTypePromotional ->
                    "PROMOTIONAL"
        )


{-| The MessageResult data model.
-}
type alias MessageResult =
    { deliveryStatus : DeliveryStatus
    , messageId : Maybe String
    , statusCode : Int
    , statusMessage : Maybe String
    , updatedToken : Maybe String
    }


{-| The MessageResponse data model.
-}
type alias MessageResponse =
    { applicationId : String
    , endpointResult : Maybe MapOfEndpointMessageResult
    , requestId : Maybe String
    , result : Maybe MapOfMessageResult
    }


{-| The MessageRequest data model.
-}
type alias MessageRequest =
    { addresses : Maybe MapOfAddressConfiguration
    , context : Maybe MapOfString
    , endpoints : Maybe MapOfEndpointSendConfiguration
    , messageConfiguration : DirectMessageConfiguration
    , traceId : Maybe String
    }


{-| The MessageConfiguration data model.
-}
type alias MessageConfiguration =
    { admmessage : Maybe Message
    , apnsmessage : Maybe Message
    , baiduMessage : Maybe Message
    , defaultMessage : Maybe Message
    , emailMessage : Maybe CampaignEmailMessage
    , gcmmessage : Maybe Message
    , smsmessage : Maybe CampaignSmsMessage
    }


{-| The MessageBody data model.
-}
type alias MessageBody =
    { message : Maybe String, requestId : Maybe String }


{-| The Message data model.
-}
type alias Message =
    { action : Maybe Action
    , body : Maybe String
    , imageIconUrl : Maybe String
    , imageSmallIconUrl : Maybe String
    , imageUrl : Maybe String
    , jsonBody : Maybe String
    , mediaUrl : Maybe String
    , rawContent : Maybe String
    , silentPush : Maybe Bool
    , timeToLive : Maybe Int
    , title : Maybe String
    , url : Maybe String
    }


{-| The MapOfString data model.
-}
type alias MapOfString =
    Dict String String


{-| The MapOfInteger data model.
-}
type alias MapOfInteger =
    Dict String Int


{-| The MapOfDouble data model.
-}
type alias MapOfDouble =
    Dict String Float


{-| The MapOfMetricDimension data model.
-}
type alias MapOfMetricDimension =
    Dict String MetricDimension


{-| The MapOfMessageResult data model.
-}
type alias MapOfMessageResult =
    Dict String MessageResult


{-| The MapOfMapOfEndpointMessageResult data model.
-}
type alias MapOfMapOfEndpointMessageResult =
    Dict String MapOfEndpointMessageResult


{-| The MapOfListOfString data model.
-}
type alias MapOfListOfString =
    Dict String ListOfString


{-| The MapOfItemResponse data model.
-}
type alias MapOfItemResponse =
    Dict String ItemResponse


{-| The MapOfEventsBatch data model.
-}
type alias MapOfEventsBatch =
    Dict String EventsBatch


{-| The MapOfEventItemResponse data model.
-}
type alias MapOfEventItemResponse =
    Dict String EventItemResponse


{-| The MapOfEvent data model.
-}
type alias MapOfEvent =
    Dict String Event


{-| The MapOfEndpointSendConfiguration data model.
-}
type alias MapOfEndpointSendConfiguration =
    Dict String EndpointSendConfiguration


{-| The MapOfEndpointMessageResult data model.
-}
type alias MapOfEndpointMessageResult =
    Dict String EndpointMessageResult


{-| The MapOfChannelResponse data model.
-}
type alias MapOfChannelResponse =
    Dict String ChannelResponse


{-| The MapOfAttributeDimension data model.
-}
type alias MapOfAttributeDimension =
    Dict String AttributeDimension


{-| The MapOfAddressConfiguration data model.
-}
type alias MapOfAddressConfiguration =
    Dict String AddressConfiguration


{-| The ListTagsForResourceResponse data model.
-}
type alias ListTagsForResourceResponse =
    { tagsModel : TagsModel }


{-| The ListTagsForResourceRequest data model.
-}
type alias ListTagsForResourceRequest =
    { resourceArn : String }


{-| The ListOfString data model.
-}
type alias ListOfString =
    List String


{-| The ListOfWriteTreatmentResource data model.
-}
type alias ListOfWriteTreatmentResource =
    List WriteTreatmentResource


{-| The ListOfTreatmentResource data model.
-}
type alias ListOfTreatmentResource =
    List TreatmentResource


{-| The ListOfSegmentResponse data model.
-}
type alias ListOfSegmentResponse =
    List SegmentResponse


{-| The ListOfSegmentReference data model.
-}
type alias ListOfSegmentReference =
    List SegmentReference


{-| The ListOfSegmentGroup data model.
-}
type alias ListOfSegmentGroup =
    List SegmentGroup


{-| The ListOfSegmentDimensions data model.
-}
type alias ListOfSegmentDimensions =
    List SegmentDimensions


{-| The ListOfResultRowValue data model.
-}
type alias ListOfResultRowValue =
    List ResultRowValue


{-| The ListOfResultRow data model.
-}
type alias ListOfResultRow =
    List ResultRow


{-| The ListOfImportJobResponse data model.
-}
type alias ListOfImportJobResponse =
    List ImportJobResponse


{-| The ListOfExportJobResponse data model.
-}
type alias ListOfExportJobResponse =
    List ExportJobResponse


{-| The ListOfEndpointResponse data model.
-}
type alias ListOfEndpointResponse =
    List EndpointResponse


{-| The ListOfEndpointBatchItem data model.
-}
type alias ListOfEndpointBatchItem =
    List EndpointBatchItem


{-| The ListOfCampaignResponse data model.
-}
type alias ListOfCampaignResponse =
    List CampaignResponse


{-| The ListOfApplicationResponse data model.
-}
type alias ListOfApplicationResponse =
    List ApplicationResponse


{-| The ListOfActivityResponse data model.
-}
type alias ListOfActivityResponse =
    List ActivityResponse


{-| The JobStatus data model.
-}
type JobStatus
    = JobStatusCreated
    | JobStatusInitializing
    | JobStatusProcessing
    | JobStatusCompleting
    | JobStatusCompleted
    | JobStatusFailing
    | JobStatusFailed


{-| The JobStatus data model.
-}
jobStatus : Enum JobStatus
jobStatus =
    Enum.define
        [ JobStatusCreated
        , JobStatusInitializing
        , JobStatusProcessing
        , JobStatusCompleting
        , JobStatusCompleted
        , JobStatusFailing
        , JobStatusFailed
        ]
        (\val ->
            case val of
                JobStatusCreated ->
                    "CREATED"

                JobStatusInitializing ->
                    "INITIALIZING"

                JobStatusProcessing ->
                    "PROCESSING"

                JobStatusCompleting ->
                    "COMPLETING"

                JobStatusCompleted ->
                    "COMPLETED"

                JobStatusFailing ->
                    "FAILING"

                JobStatusFailed ->
                    "FAILED"
        )


{-| The ItemResponse data model.
-}
type alias ItemResponse =
    { endpointItemResponse : Maybe EndpointItemResponse, eventsItemResponse : Maybe MapOfEventItemResponse }


{-| The Include data model.
-}
type Include
    = IncludeAll
    | IncludeAny
    | IncludeNone


{-| The Include data model.
-}
include : Enum Include
include =
    Enum.define
        [ IncludeAll, IncludeAny, IncludeNone ]
        (\val ->
            case val of
                IncludeAll ->
                    "ALL"

                IncludeAny ->
                    "ANY"

                IncludeNone ->
                    "NONE"
        )


{-| The ImportJobsResponse data model.
-}
type alias ImportJobsResponse =
    { item : ListOfImportJobResponse, nextToken : Maybe String }


{-| The ImportJobResponse data model.
-}
type alias ImportJobResponse =
    { applicationId : String
    , completedPieces : Maybe Int
    , completionDate : Maybe String
    , creationDate : String
    , definition : ImportJobResource
    , failedPieces : Maybe Int
    , failures : Maybe ListOfString
    , id : String
    , jobStatus : JobStatus
    , totalFailures : Maybe Int
    , totalPieces : Maybe Int
    , totalProcessed : Maybe Int
    , type_ : String
    }


{-| The ImportJobResource data model.
-}
type alias ImportJobResource =
    { defineSegment : Maybe Bool
    , externalId : Maybe String
    , format : Format
    , registerEndpoints : Maybe Bool
    , roleArn : String
    , s3Url : String
    , segmentId : Maybe String
    , segmentName : Maybe String
    }


{-| The ImportJobRequest data model.
-}
type alias ImportJobRequest =
    { defineSegment : Maybe Bool
    , externalId : Maybe String
    , format : Format
    , registerEndpoints : Maybe Bool
    , roleArn : String
    , s3Url : String
    , segmentId : Maybe String
    , segmentName : Maybe String
    }


{-| The GetVoiceChannelResponse data model.
-}
type alias GetVoiceChannelResponse =
    { voiceChannelResponse : VoiceChannelResponse }


{-| The GetVoiceChannelRequest data model.
-}
type alias GetVoiceChannelRequest =
    { applicationId : String }


{-| The GetUserEndpointsResponse data model.
-}
type alias GetUserEndpointsResponse =
    { endpointsResponse : EndpointsResponse }


{-| The GetUserEndpointsRequest data model.
-}
type alias GetUserEndpointsRequest =
    { applicationId : String, userId : String }


{-| The GetSmsChannelResponse data model.
-}
type alias GetSmsChannelResponse =
    { smschannelResponse : SmschannelResponse }


{-| The GetSmsChannelRequest data model.
-}
type alias GetSmsChannelRequest =
    { applicationId : String }


{-| The GetSegmentsResponse data model.
-}
type alias GetSegmentsResponse =
    { segmentsResponse : SegmentsResponse }


{-| The GetSegmentsRequest data model.
-}
type alias GetSegmentsRequest =
    { applicationId : String, pageSize : Maybe String, token : Maybe String }


{-| The GetSegmentVersionsResponse data model.
-}
type alias GetSegmentVersionsResponse =
    { segmentsResponse : SegmentsResponse }


{-| The GetSegmentVersionsRequest data model.
-}
type alias GetSegmentVersionsRequest =
    { applicationId : String, pageSize : Maybe String, segmentId : String, token : Maybe String }


{-| The GetSegmentVersionResponse data model.
-}
type alias GetSegmentVersionResponse =
    { segmentResponse : SegmentResponse }


{-| The GetSegmentVersionRequest data model.
-}
type alias GetSegmentVersionRequest =
    { applicationId : String, segmentId : String, version : String }


{-| The GetSegmentResponse data model.
-}
type alias GetSegmentResponse =
    { segmentResponse : SegmentResponse }


{-| The GetSegmentRequest data model.
-}
type alias GetSegmentRequest =
    { applicationId : String, segmentId : String }


{-| The GetSegmentImportJobsResponse data model.
-}
type alias GetSegmentImportJobsResponse =
    { importJobsResponse : ImportJobsResponse }


{-| The GetSegmentImportJobsRequest data model.
-}
type alias GetSegmentImportJobsRequest =
    { applicationId : String, pageSize : Maybe String, segmentId : String, token : Maybe String }


{-| The GetSegmentExportJobsResponse data model.
-}
type alias GetSegmentExportJobsResponse =
    { exportJobsResponse : ExportJobsResponse }


{-| The GetSegmentExportJobsRequest data model.
-}
type alias GetSegmentExportJobsRequest =
    { applicationId : String, pageSize : Maybe String, segmentId : String, token : Maybe String }


{-| The GetImportJobsResponse data model.
-}
type alias GetImportJobsResponse =
    { importJobsResponse : ImportJobsResponse }


{-| The GetImportJobsRequest data model.
-}
type alias GetImportJobsRequest =
    { applicationId : String, pageSize : Maybe String, token : Maybe String }


{-| The GetImportJobResponse data model.
-}
type alias GetImportJobResponse =
    { importJobResponse : ImportJobResponse }


{-| The GetImportJobRequest data model.
-}
type alias GetImportJobRequest =
    { applicationId : String, jobId : String }


{-| The GetGcmChannelResponse data model.
-}
type alias GetGcmChannelResponse =
    { gcmchannelResponse : GcmchannelResponse }


{-| The GetGcmChannelRequest data model.
-}
type alias GetGcmChannelRequest =
    { applicationId : String }


{-| The GetExportJobsResponse data model.
-}
type alias GetExportJobsResponse =
    { exportJobsResponse : ExportJobsResponse }


{-| The GetExportJobsRequest data model.
-}
type alias GetExportJobsRequest =
    { applicationId : String, pageSize : Maybe String, token : Maybe String }


{-| The GetExportJobResponse data model.
-}
type alias GetExportJobResponse =
    { exportJobResponse : ExportJobResponse }


{-| The GetExportJobRequest data model.
-}
type alias GetExportJobRequest =
    { applicationId : String, jobId : String }


{-| The GetEventStreamResponse data model.
-}
type alias GetEventStreamResponse =
    { eventStream : EventStream }


{-| The GetEventStreamRequest data model.
-}
type alias GetEventStreamRequest =
    { applicationId : String }


{-| The GetEndpointResponse data model.
-}
type alias GetEndpointResponse =
    { endpointResponse : EndpointResponse }


{-| The GetEndpointRequest data model.
-}
type alias GetEndpointRequest =
    { applicationId : String, endpointId : String }


{-| The GetEmailChannelResponse data model.
-}
type alias GetEmailChannelResponse =
    { emailChannelResponse : EmailChannelResponse }


{-| The GetEmailChannelRequest data model.
-}
type alias GetEmailChannelRequest =
    { applicationId : String }


{-| The GetChannelsResponse data model.
-}
type alias GetChannelsResponse =
    { channelsResponse : ChannelsResponse }


{-| The GetChannelsRequest data model.
-}
type alias GetChannelsRequest =
    { applicationId : String }


{-| The GetCampaignsResponse data model.
-}
type alias GetCampaignsResponse =
    { campaignsResponse : CampaignsResponse }


{-| The GetCampaignsRequest data model.
-}
type alias GetCampaignsRequest =
    { applicationId : String, pageSize : Maybe String, token : Maybe String }


{-| The GetCampaignVersionsResponse data model.
-}
type alias GetCampaignVersionsResponse =
    { campaignsResponse : CampaignsResponse }


{-| The GetCampaignVersionsRequest data model.
-}
type alias GetCampaignVersionsRequest =
    { applicationId : String, campaignId : String, pageSize : Maybe String, token : Maybe String }


{-| The GetCampaignVersionResponse data model.
-}
type alias GetCampaignVersionResponse =
    { campaignResponse : CampaignResponse }


{-| The GetCampaignVersionRequest data model.
-}
type alias GetCampaignVersionRequest =
    { applicationId : String, campaignId : String, version : String }


{-| The GetCampaignResponse data model.
-}
type alias GetCampaignResponse =
    { campaignResponse : CampaignResponse }


{-| The GetCampaignRequest data model.
-}
type alias GetCampaignRequest =
    { applicationId : String, campaignId : String }


{-| The GetCampaignDateRangeKpiResponse data model.
-}
type alias GetCampaignDateRangeKpiResponse =
    { campaignDateRangeKpiResponse : CampaignDateRangeKpiResponse }


{-| The GetCampaignDateRangeKpiRequest data model.
-}
type alias GetCampaignDateRangeKpiRequest =
    { applicationId : String
    , campaignId : String
    , endTime : Maybe String
    , kpiName : String
    , nextToken : Maybe String
    , pageSize : Maybe String
    , startTime : Maybe String
    }


{-| The GetCampaignActivitiesResponse data model.
-}
type alias GetCampaignActivitiesResponse =
    { activitiesResponse : ActivitiesResponse }


{-| The GetCampaignActivitiesRequest data model.
-}
type alias GetCampaignActivitiesRequest =
    { applicationId : String, campaignId : String, pageSize : Maybe String, token : Maybe String }


{-| The GetBaiduChannelResponse data model.
-}
type alias GetBaiduChannelResponse =
    { baiduChannelResponse : BaiduChannelResponse }


{-| The GetBaiduChannelRequest data model.
-}
type alias GetBaiduChannelRequest =
    { applicationId : String }


{-| The GetAppsResponse data model.
-}
type alias GetAppsResponse =
    { applicationsResponse : ApplicationsResponse }


{-| The GetAppsRequest data model.
-}
type alias GetAppsRequest =
    { pageSize : Maybe String, token : Maybe String }


{-| The GetApplicationSettingsResponse data model.
-}
type alias GetApplicationSettingsResponse =
    { applicationSettingsResource : ApplicationSettingsResource }


{-| The GetApplicationSettingsRequest data model.
-}
type alias GetApplicationSettingsRequest =
    { applicationId : String }


{-| The GetApplicationDateRangeKpiResponse data model.
-}
type alias GetApplicationDateRangeKpiResponse =
    { applicationDateRangeKpiResponse : ApplicationDateRangeKpiResponse }


{-| The GetApplicationDateRangeKpiRequest data model.
-}
type alias GetApplicationDateRangeKpiRequest =
    { applicationId : String
    , endTime : Maybe String
    , kpiName : String
    , nextToken : Maybe String
    , pageSize : Maybe String
    , startTime : Maybe String
    }


{-| The GetAppResponse data model.
-}
type alias GetAppResponse =
    { applicationResponse : ApplicationResponse }


{-| The GetAppRequest data model.
-}
type alias GetAppRequest =
    { applicationId : String }


{-| The GetApnsVoipSandboxChannelResponse data model.
-}
type alias GetApnsVoipSandboxChannelResponse =
    { apnsvoipSandboxChannelResponse : ApnsvoipSandboxChannelResponse }


{-| The GetApnsVoipSandboxChannelRequest data model.
-}
type alias GetApnsVoipSandboxChannelRequest =
    { applicationId : String }


{-| The GetApnsVoipChannelResponse data model.
-}
type alias GetApnsVoipChannelResponse =
    { apnsvoipChannelResponse : ApnsvoipChannelResponse }


{-| The GetApnsVoipChannelRequest data model.
-}
type alias GetApnsVoipChannelRequest =
    { applicationId : String }


{-| The GetApnsSandboxChannelResponse data model.
-}
type alias GetApnsSandboxChannelResponse =
    { apnssandboxChannelResponse : ApnssandboxChannelResponse }


{-| The GetApnsSandboxChannelRequest data model.
-}
type alias GetApnsSandboxChannelRequest =
    { applicationId : String }


{-| The GetApnsChannelResponse data model.
-}
type alias GetApnsChannelResponse =
    { apnschannelResponse : ApnschannelResponse }


{-| The GetApnsChannelRequest data model.
-}
type alias GetApnsChannelRequest =
    { applicationId : String }


{-| The GetAdmChannelResponse data model.
-}
type alias GetAdmChannelResponse =
    { admchannelResponse : AdmchannelResponse }


{-| The GetAdmChannelRequest data model.
-}
type alias GetAdmChannelRequest =
    { applicationId : String }


{-| The GpspointDimension data model.
-}
type alias GpspointDimension =
    { coordinates : Gpscoordinates, rangeInKilometers : Maybe Float }


{-| The Gpscoordinates data model.
-}
type alias Gpscoordinates =
    { latitude : Float, longitude : Float }


{-| The Gcmmessage data model.
-}
type alias Gcmmessage =
    { action : Maybe Action
    , body : Maybe String
    , collapseKey : Maybe String
    , data : Maybe MapOfString
    , iconReference : Maybe String
    , imageIconUrl : Maybe String
    , imageUrl : Maybe String
    , priority : Maybe String
    , rawContent : Maybe String
    , restrictedPackageName : Maybe String
    , silentPush : Maybe Bool
    , smallImageIconUrl : Maybe String
    , sound : Maybe String
    , substitutions : Maybe MapOfListOfString
    , timeToLive : Maybe Int
    , title : Maybe String
    , url : Maybe String
    }


{-| The GcmchannelResponse data model.
-}
type alias GcmchannelResponse =
    { applicationId : Maybe String
    , creationDate : Maybe String
    , credential : String
    , enabled : Maybe Bool
    , hasCredential : Maybe Bool
    , id : Maybe String
    , isArchived : Maybe Bool
    , lastModifiedBy : Maybe String
    , lastModifiedDate : Maybe String
    , platform : String
    , version : Maybe Int
    }


{-| The GcmchannelRequest data model.
-}
type alias GcmchannelRequest =
    { apiKey : String, enabled : Maybe Bool }


{-| The Frequency data model.
-}
type Frequency
    = FrequencyOnce
    | FrequencyHourly
    | FrequencyDaily
    | FrequencyWeekly
    | FrequencyMonthly
    | FrequencyEvent


{-| The Frequency data model.
-}
frequency : Enum Frequency
frequency =
    Enum.define
        [ FrequencyOnce, FrequencyHourly, FrequencyDaily, FrequencyWeekly, FrequencyMonthly, FrequencyEvent ]
        (\val ->
            case val of
                FrequencyOnce ->
                    "ONCE"

                FrequencyHourly ->
                    "HOURLY"

                FrequencyDaily ->
                    "DAILY"

                FrequencyWeekly ->
                    "WEEKLY"

                FrequencyMonthly ->
                    "MONTHLY"

                FrequencyEvent ->
                    "EVENT"
        )


{-| The Format data model.
-}
type Format
    = FormatCsv
    | FormatJson


{-| The Format data model.
-}
format : Enum Format
format =
    Enum.define
        [ FormatCsv, FormatJson ]
        (\val ->
            case val of
                FormatCsv ->
                    "CSV"

                FormatJson ->
                    "JSON"
        )


{-| The FilterType data model.
-}
type FilterType
    = FilterTypeSystem
    | FilterTypeEndpoint


{-| The FilterType data model.
-}
filterType : Enum FilterType
filterType =
    Enum.define
        [ FilterTypeSystem, FilterTypeEndpoint ]
        (\val ->
            case val of
                FilterTypeSystem ->
                    "SYSTEM"

                FilterTypeEndpoint ->
                    "ENDPOINT"
        )


{-| The ExportJobsResponse data model.
-}
type alias ExportJobsResponse =
    { item : ListOfExportJobResponse, nextToken : Maybe String }


{-| The ExportJobResponse data model.
-}
type alias ExportJobResponse =
    { applicationId : String
    , completedPieces : Maybe Int
    , completionDate : Maybe String
    , creationDate : String
    , definition : ExportJobResource
    , failedPieces : Maybe Int
    , failures : Maybe ListOfString
    , id : String
    , jobStatus : JobStatus
    , totalFailures : Maybe Int
    , totalPieces : Maybe Int
    , totalProcessed : Maybe Int
    , type_ : String
    }


{-| The ExportJobResource data model.
-}
type alias ExportJobResource =
    { roleArn : String, s3UrlPrefix : String, segmentId : Maybe String, segmentVersion : Maybe Int }


{-| The ExportJobRequest data model.
-}
type alias ExportJobRequest =
    { roleArn : String, s3UrlPrefix : String, segmentId : Maybe String, segmentVersion : Maybe Int }


{-| The EventsResponse data model.
-}
type alias EventsResponse =
    { results : Maybe MapOfItemResponse }


{-| The EventsRequest data model.
-}
type alias EventsRequest =
    { batchItem : MapOfEventsBatch }


{-| The EventsBatch data model.
-}
type alias EventsBatch =
    { endpoint : PublicEndpoint, events : MapOfEvent }


{-| The EventStream data model.
-}
type alias EventStream =
    { applicationId : String
    , destinationStreamArn : String
    , externalId : Maybe String
    , lastModifiedDate : Maybe String
    , lastUpdatedBy : Maybe String
    , roleArn : String
    }


{-| The EventItemResponse data model.
-}
type alias EventItemResponse =
    { message : Maybe String, statusCode : Maybe Int }


{-| The EventDimensions data model.
-}
type alias EventDimensions =
    { attributes : Maybe MapOfAttributeDimension, eventType : Maybe SetDimension, metrics : Maybe MapOfMetricDimension }


{-| The Event data model.
-}
type alias Event =
    { appPackageName : Maybe String
    , appTitle : Maybe String
    , appVersionCode : Maybe String
    , attributes : Maybe MapOfString
    , clientSdkVersion : Maybe String
    , eventType : String
    , metrics : Maybe MapOfDouble
    , sdkName : Maybe String
    , session : Maybe Session
    , timestamp : String
    }


{-| The EndpointsResponse data model.
-}
type alias EndpointsResponse =
    { item : ListOfEndpointResponse }


{-| The EndpointUser data model.
-}
type alias EndpointUser =
    { userAttributes : Maybe MapOfListOfString, userId : Maybe String }


{-| The EndpointSendConfiguration data model.
-}
type alias EndpointSendConfiguration =
    { bodyOverride : Maybe String
    , context : Maybe MapOfString
    , rawContent : Maybe String
    , substitutions : Maybe MapOfListOfString
    , titleOverride : Maybe String
    }


{-| The EndpointResponse data model.
-}
type alias EndpointResponse =
    { address : Maybe String
    , applicationId : Maybe String
    , attributes : Maybe MapOfListOfString
    , channelType : Maybe ChannelType
    , cohortId : Maybe String
    , creationDate : Maybe String
    , demographic : Maybe EndpointDemographic
    , effectiveDate : Maybe String
    , endpointStatus : Maybe String
    , id : Maybe String
    , location : Maybe EndpointLocation
    , metrics : Maybe MapOfDouble
    , optOut : Maybe String
    , requestId : Maybe String
    , user : Maybe EndpointUser
    }


{-| The EndpointRequest data model.
-}
type alias EndpointRequest =
    { address : Maybe String
    , attributes : Maybe MapOfListOfString
    , channelType : Maybe ChannelType
    , demographic : Maybe EndpointDemographic
    , effectiveDate : Maybe String
    , endpointStatus : Maybe String
    , location : Maybe EndpointLocation
    , metrics : Maybe MapOfDouble
    , optOut : Maybe String
    , requestId : Maybe String
    , user : Maybe EndpointUser
    }


{-| The EndpointMessageResult data model.
-}
type alias EndpointMessageResult =
    { address : Maybe String
    , deliveryStatus : DeliveryStatus
    , messageId : Maybe String
    , statusCode : Int
    , statusMessage : Maybe String
    , updatedToken : Maybe String
    }


{-| The EndpointLocation data model.
-}
type alias EndpointLocation =
    { city : Maybe String
    , country : Maybe String
    , latitude : Maybe Float
    , longitude : Maybe Float
    , postalCode : Maybe String
    , region : Maybe String
    }


{-| The EndpointItemResponse data model.
-}
type alias EndpointItemResponse =
    { message : Maybe String, statusCode : Maybe Int }


{-| The EndpointDemographic data model.
-}
type alias EndpointDemographic =
    { appVersion : Maybe String
    , locale : Maybe String
    , make : Maybe String
    , model : Maybe String
    , modelVersion : Maybe String
    , platform : Maybe String
    , platformVersion : Maybe String
    , timezone : Maybe String
    }


{-| The EndpointBatchRequest data model.
-}
type alias EndpointBatchRequest =
    { item : ListOfEndpointBatchItem }


{-| The EndpointBatchItem data model.
-}
type alias EndpointBatchItem =
    { address : Maybe String
    , attributes : Maybe MapOfListOfString
    , channelType : Maybe ChannelType
    , demographic : Maybe EndpointDemographic
    , effectiveDate : Maybe String
    , endpointStatus : Maybe String
    , id : Maybe String
    , location : Maybe EndpointLocation
    , metrics : Maybe MapOfDouble
    , optOut : Maybe String
    , requestId : Maybe String
    , user : Maybe EndpointUser
    }


{-| The EmailMessage data model.
-}
type alias EmailMessage =
    { body : Maybe String
    , feedbackForwardingAddress : Maybe String
    , fromAddress : Maybe String
    , rawEmail : Maybe RawEmail
    , replyToAddresses : Maybe ListOfString
    , simpleEmail : Maybe SimpleEmail
    , substitutions : Maybe MapOfListOfString
    }


{-| The EmailChannelResponse data model.
-}
type alias EmailChannelResponse =
    { applicationId : Maybe String
    , configurationSet : Maybe String
    , creationDate : Maybe String
    , enabled : Maybe Bool
    , fromAddress : Maybe String
    , hasCredential : Maybe Bool
    , id : Maybe String
    , identity : Maybe String
    , isArchived : Maybe Bool
    , lastModifiedBy : Maybe String
    , lastModifiedDate : Maybe String
    , messagesPerSecond : Maybe Int
    , platform : String
    , roleArn : Maybe String
    , version : Maybe Int
    }


{-| The EmailChannelRequest data model.
-}
type alias EmailChannelRequest =
    { configurationSet : Maybe String
    , enabled : Maybe Bool
    , fromAddress : String
    , identity : String
    , roleArn : Maybe String
    }


{-| The Duration data model.
-}
type Duration
    = DurationHr24
    | DurationDay7
    | DurationDay14
    | DurationDay30


{-| The Duration data model.
-}
duration : Enum Duration
duration =
    Enum.define
        [ DurationHr24, DurationDay7, DurationDay14, DurationDay30 ]
        (\val ->
            case val of
                DurationHr24 ->
                    "HR_24"

                DurationDay7 ->
                    "DAY_7"

                DurationDay14 ->
                    "DAY_14"

                DurationDay30 ->
                    "DAY_30"
        )


{-| The DirectMessageConfiguration data model.
-}
type alias DirectMessageConfiguration =
    { admmessage : Maybe Admmessage
    , apnsmessage : Maybe Apnsmessage
    , baiduMessage : Maybe BaiduMessage
    , defaultMessage : Maybe DefaultMessage
    , defaultPushNotificationMessage : Maybe DefaultPushNotificationMessage
    , emailMessage : Maybe EmailMessage
    , gcmmessage : Maybe Gcmmessage
    , smsmessage : Maybe Smsmessage
    , voiceMessage : Maybe VoiceMessage
    }


{-| The DimensionType data model.
-}
type DimensionType
    = DimensionTypeInclusive
    | DimensionTypeExclusive


{-| The DimensionType data model.
-}
dimensionType : Enum DimensionType
dimensionType =
    Enum.define
        [ DimensionTypeInclusive, DimensionTypeExclusive ]
        (\val ->
            case val of
                DimensionTypeInclusive ->
                    "INCLUSIVE"

                DimensionTypeExclusive ->
                    "EXCLUSIVE"
        )


{-| The DeliveryStatus data model.
-}
type DeliveryStatus
    = DeliveryStatusSuccessful
    | DeliveryStatusThrottled
    | DeliveryStatusTemporaryFailure
    | DeliveryStatusPermanentFailure
    | DeliveryStatusUnknownFailure
    | DeliveryStatusOptOut
    | DeliveryStatusDuplicate


{-| The DeliveryStatus data model.
-}
deliveryStatus : Enum DeliveryStatus
deliveryStatus =
    Enum.define
        [ DeliveryStatusSuccessful
        , DeliveryStatusThrottled
        , DeliveryStatusTemporaryFailure
        , DeliveryStatusPermanentFailure
        , DeliveryStatusUnknownFailure
        , DeliveryStatusOptOut
        , DeliveryStatusDuplicate
        ]
        (\val ->
            case val of
                DeliveryStatusSuccessful ->
                    "SUCCESSFUL"

                DeliveryStatusThrottled ->
                    "THROTTLED"

                DeliveryStatusTemporaryFailure ->
                    "TEMPORARY_FAILURE"

                DeliveryStatusPermanentFailure ->
                    "PERMANENT_FAILURE"

                DeliveryStatusUnknownFailure ->
                    "UNKNOWN_FAILURE"

                DeliveryStatusOptOut ->
                    "OPT_OUT"

                DeliveryStatusDuplicate ->
                    "DUPLICATE"
        )


{-| The DeleteVoiceChannelResponse data model.
-}
type alias DeleteVoiceChannelResponse =
    { voiceChannelResponse : VoiceChannelResponse }


{-| The DeleteVoiceChannelRequest data model.
-}
type alias DeleteVoiceChannelRequest =
    { applicationId : String }


{-| The DeleteUserEndpointsResponse data model.
-}
type alias DeleteUserEndpointsResponse =
    { endpointsResponse : EndpointsResponse }


{-| The DeleteUserEndpointsRequest data model.
-}
type alias DeleteUserEndpointsRequest =
    { applicationId : String, userId : String }


{-| The DeleteSmsChannelResponse data model.
-}
type alias DeleteSmsChannelResponse =
    { smschannelResponse : SmschannelResponse }


{-| The DeleteSmsChannelRequest data model.
-}
type alias DeleteSmsChannelRequest =
    { applicationId : String }


{-| The DeleteSegmentResponse data model.
-}
type alias DeleteSegmentResponse =
    { segmentResponse : SegmentResponse }


{-| The DeleteSegmentRequest data model.
-}
type alias DeleteSegmentRequest =
    { applicationId : String, segmentId : String }


{-| The DeleteGcmChannelResponse data model.
-}
type alias DeleteGcmChannelResponse =
    { gcmchannelResponse : GcmchannelResponse }


{-| The DeleteGcmChannelRequest data model.
-}
type alias DeleteGcmChannelRequest =
    { applicationId : String }


{-| The DeleteEventStreamResponse data model.
-}
type alias DeleteEventStreamResponse =
    { eventStream : EventStream }


{-| The DeleteEventStreamRequest data model.
-}
type alias DeleteEventStreamRequest =
    { applicationId : String }


{-| The DeleteEndpointResponse data model.
-}
type alias DeleteEndpointResponse =
    { endpointResponse : EndpointResponse }


{-| The DeleteEndpointRequest data model.
-}
type alias DeleteEndpointRequest =
    { applicationId : String, endpointId : String }


{-| The DeleteEmailChannelResponse data model.
-}
type alias DeleteEmailChannelResponse =
    { emailChannelResponse : EmailChannelResponse }


{-| The DeleteEmailChannelRequest data model.
-}
type alias DeleteEmailChannelRequest =
    { applicationId : String }


{-| The DeleteCampaignResponse data model.
-}
type alias DeleteCampaignResponse =
    { campaignResponse : CampaignResponse }


{-| The DeleteCampaignRequest data model.
-}
type alias DeleteCampaignRequest =
    { applicationId : String, campaignId : String }


{-| The DeleteBaiduChannelResponse data model.
-}
type alias DeleteBaiduChannelResponse =
    { baiduChannelResponse : BaiduChannelResponse }


{-| The DeleteBaiduChannelRequest data model.
-}
type alias DeleteBaiduChannelRequest =
    { applicationId : String }


{-| The DeleteAppResponse data model.
-}
type alias DeleteAppResponse =
    { applicationResponse : ApplicationResponse }


{-| The DeleteAppRequest data model.
-}
type alias DeleteAppRequest =
    { applicationId : String }


{-| The DeleteApnsVoipSandboxChannelResponse data model.
-}
type alias DeleteApnsVoipSandboxChannelResponse =
    { apnsvoipSandboxChannelResponse : ApnsvoipSandboxChannelResponse }


{-| The DeleteApnsVoipSandboxChannelRequest data model.
-}
type alias DeleteApnsVoipSandboxChannelRequest =
    { applicationId : String }


{-| The DeleteApnsVoipChannelResponse data model.
-}
type alias DeleteApnsVoipChannelResponse =
    { apnsvoipChannelResponse : ApnsvoipChannelResponse }


{-| The DeleteApnsVoipChannelRequest data model.
-}
type alias DeleteApnsVoipChannelRequest =
    { applicationId : String }


{-| The DeleteApnsSandboxChannelResponse data model.
-}
type alias DeleteApnsSandboxChannelResponse =
    { apnssandboxChannelResponse : ApnssandboxChannelResponse }


{-| The DeleteApnsSandboxChannelRequest data model.
-}
type alias DeleteApnsSandboxChannelRequest =
    { applicationId : String }


{-| The DeleteApnsChannelResponse data model.
-}
type alias DeleteApnsChannelResponse =
    { apnschannelResponse : ApnschannelResponse }


{-| The DeleteApnsChannelRequest data model.
-}
type alias DeleteApnsChannelRequest =
    { applicationId : String }


{-| The DeleteAdmChannelResponse data model.
-}
type alias DeleteAdmChannelResponse =
    { admchannelResponse : AdmchannelResponse }


{-| The DeleteAdmChannelRequest data model.
-}
type alias DeleteAdmChannelRequest =
    { applicationId : String }


{-| The DefaultPushNotificationMessage data model.
-}
type alias DefaultPushNotificationMessage =
    { action : Maybe Action
    , body : Maybe String
    , data : Maybe MapOfString
    , silentPush : Maybe Bool
    , substitutions : Maybe MapOfListOfString
    , title : Maybe String
    , url : Maybe String
    }


{-| The DefaultMessage data model.
-}
type alias DefaultMessage =
    { body : Maybe String, substitutions : Maybe MapOfListOfString }


{-| The CreateSegmentResponse data model.
-}
type alias CreateSegmentResponse =
    { segmentResponse : SegmentResponse }


{-| The CreateSegmentRequest data model.
-}
type alias CreateSegmentRequest =
    { applicationId : String, writeSegmentRequest : WriteSegmentRequest }


{-| The CreateImportJobResponse data model.
-}
type alias CreateImportJobResponse =
    { importJobResponse : ImportJobResponse }


{-| The CreateImportJobRequest data model.
-}
type alias CreateImportJobRequest =
    { applicationId : String, importJobRequest : ImportJobRequest }


{-| The CreateExportJobResponse data model.
-}
type alias CreateExportJobResponse =
    { exportJobResponse : ExportJobResponse }


{-| The CreateExportJobRequest data model.
-}
type alias CreateExportJobRequest =
    { applicationId : String, exportJobRequest : ExportJobRequest }


{-| The CreateCampaignResponse data model.
-}
type alias CreateCampaignResponse =
    { campaignResponse : CampaignResponse }


{-| The CreateCampaignRequest data model.
-}
type alias CreateCampaignRequest =
    { applicationId : String, writeCampaignRequest : WriteCampaignRequest }


{-| The CreateApplicationRequest data model.
-}
type alias CreateApplicationRequest =
    { name : String, tags : Maybe MapOfString }


{-| The CreateAppResponse data model.
-}
type alias CreateAppResponse =
    { applicationResponse : ApplicationResponse }


{-| The CreateAppRequest data model.
-}
type alias CreateAppRequest =
    { createApplicationRequest : CreateApplicationRequest }


{-| The ChannelsResponse data model.
-}
type alias ChannelsResponse =
    { channels : MapOfChannelResponse }


{-| The ChannelType data model.
-}
type ChannelType
    = ChannelTypeGcm
    | ChannelTypeApns
    | ChannelTypeApnsSandbox
    | ChannelTypeApnsVoip
    | ChannelTypeApnsVoipSandbox
    | ChannelTypeAdm
    | ChannelTypeSms
    | ChannelTypeVoice
    | ChannelTypeEmail
    | ChannelTypeBaidu
    | ChannelTypeCustom


{-| The ChannelType data model.
-}
channelType : Enum ChannelType
channelType =
    Enum.define
        [ ChannelTypeGcm
        , ChannelTypeApns
        , ChannelTypeApnsSandbox
        , ChannelTypeApnsVoip
        , ChannelTypeApnsVoipSandbox
        , ChannelTypeAdm
        , ChannelTypeSms
        , ChannelTypeVoice
        , ChannelTypeEmail
        , ChannelTypeBaidu
        , ChannelTypeCustom
        ]
        (\val ->
            case val of
                ChannelTypeGcm ->
                    "GCM"

                ChannelTypeApns ->
                    "APNS"

                ChannelTypeApnsSandbox ->
                    "APNS_SANDBOX"

                ChannelTypeApnsVoip ->
                    "APNS_VOIP"

                ChannelTypeApnsVoipSandbox ->
                    "APNS_VOIP_SANDBOX"

                ChannelTypeAdm ->
                    "ADM"

                ChannelTypeSms ->
                    "SMS"

                ChannelTypeVoice ->
                    "VOICE"

                ChannelTypeEmail ->
                    "EMAIL"

                ChannelTypeBaidu ->
                    "BAIDU"

                ChannelTypeCustom ->
                    "CUSTOM"
        )


{-| The ChannelResponse data model.
-}
type alias ChannelResponse =
    { applicationId : Maybe String
    , creationDate : Maybe String
    , enabled : Maybe Bool
    , hasCredential : Maybe Bool
    , id : Maybe String
    , isArchived : Maybe Bool
    , lastModifiedBy : Maybe String
    , lastModifiedDate : Maybe String
    , version : Maybe Int
    }


{-| The CampaignsResponse data model.
-}
type alias CampaignsResponse =
    { item : ListOfCampaignResponse, nextToken : Maybe String }


{-| The CampaignStatus data model.
-}
type CampaignStatus
    = CampaignStatusScheduled
    | CampaignStatusExecuting
    | CampaignStatusPendingNextRun
    | CampaignStatusCompleted
    | CampaignStatusPaused
    | CampaignStatusDeleted


{-| The CampaignStatus data model.
-}
campaignStatus : Enum CampaignStatus
campaignStatus =
    Enum.define
        [ CampaignStatusScheduled
        , CampaignStatusExecuting
        , CampaignStatusPendingNextRun
        , CampaignStatusCompleted
        , CampaignStatusPaused
        , CampaignStatusDeleted
        ]
        (\val ->
            case val of
                CampaignStatusScheduled ->
                    "SCHEDULED"

                CampaignStatusExecuting ->
                    "EXECUTING"

                CampaignStatusPendingNextRun ->
                    "PENDING_NEXT_RUN"

                CampaignStatusCompleted ->
                    "COMPLETED"

                CampaignStatusPaused ->
                    "PAUSED"

                CampaignStatusDeleted ->
                    "DELETED"
        )


{-| The CampaignState data model.
-}
type alias CampaignState =
    { campaignStatus : Maybe CampaignStatus }


{-| The CampaignSmsMessage data model.
-}
type alias CampaignSmsMessage =
    { body : Maybe String, messageType : Maybe MessageType, senderId : Maybe String }


{-| The CampaignResponse data model.
-}
type alias CampaignResponse =
    { additionalTreatments : Maybe ListOfTreatmentResource
    , applicationId : String
    , arn : String
    , creationDate : String
    , defaultState : Maybe CampaignState
    , description : Maybe String
    , holdoutPercent : Maybe Int
    , hook : Maybe CampaignHook
    , id : String
    , isPaused : Maybe Bool
    , lastModifiedDate : String
    , limits : Maybe CampaignLimits
    , messageConfiguration : Maybe MessageConfiguration
    , name : Maybe String
    , schedule : Maybe Schedule
    , segmentId : String
    , segmentVersion : Int
    , state : Maybe CampaignState
    , treatmentDescription : Maybe String
    , treatmentName : Maybe String
    , version : Maybe Int
    , tags : Maybe MapOfString
    }


{-| The CampaignLimits data model.
-}
type alias CampaignLimits =
    { daily : Maybe Int, maximumDuration : Maybe Int, messagesPerSecond : Maybe Int, total : Maybe Int }


{-| The CampaignHook data model.
-}
type alias CampaignHook =
    { lambdaFunctionName : Maybe String, mode : Maybe Mode, webUrl : Maybe String }


{-| The CampaignEventFilter data model.
-}
type alias CampaignEventFilter =
    { dimensions : EventDimensions, filterType : FilterType }


{-| The CampaignEmailMessage data model.
-}
type alias CampaignEmailMessage =
    { body : Maybe String, fromAddress : Maybe String, htmlBody : Maybe String, title : String }


{-| The CampaignDateRangeKpiResponse data model.
-}
type alias CampaignDateRangeKpiResponse =
    { applicationId : String
    , campaignId : String
    , endTime : String
    , kpiName : String
    , kpiResult : BaseKpiResult
    , nextToken : Maybe String
    , startTime : String
    }


{-| The BaseKpiResult data model.
-}
type alias BaseKpiResult =
    { rows : ListOfResultRow }


{-| The BaiduMessage data model.
-}
type alias BaiduMessage =
    { action : Maybe Action
    , body : Maybe String
    , data : Maybe MapOfString
    , iconReference : Maybe String
    , imageIconUrl : Maybe String
    , imageUrl : Maybe String
    , rawContent : Maybe String
    , silentPush : Maybe Bool
    , smallImageIconUrl : Maybe String
    , sound : Maybe String
    , substitutions : Maybe MapOfListOfString
    , timeToLive : Maybe Int
    , title : Maybe String
    , url : Maybe String
    }


{-| The BaiduChannelResponse data model.
-}
type alias BaiduChannelResponse =
    { applicationId : Maybe String
    , creationDate : Maybe String
    , credential : String
    , enabled : Maybe Bool
    , hasCredential : Maybe Bool
    , id : Maybe String
    , isArchived : Maybe Bool
    , lastModifiedBy : Maybe String
    , lastModifiedDate : Maybe String
    , platform : String
    , version : Maybe Int
    }


{-| The BaiduChannelRequest data model.
-}
type alias BaiduChannelRequest =
    { apiKey : String, enabled : Maybe Bool, secretKey : String }


{-| The AttributesResource data model.
-}
type alias AttributesResource =
    { applicationId : String, attributeType : String, attributes : Maybe ListOfString }


{-| The AttributeType data model.
-}
type AttributeType
    = AttributeTypeInclusive
    | AttributeTypeExclusive


{-| The AttributeType data model.
-}
attributeType : Enum AttributeType
attributeType =
    Enum.define
        [ AttributeTypeInclusive, AttributeTypeExclusive ]
        (\val ->
            case val of
                AttributeTypeInclusive ->
                    "INCLUSIVE"

                AttributeTypeExclusive ->
                    "EXCLUSIVE"
        )


{-| The AttributeDimension data model.
-}
type alias AttributeDimension =
    { attributeType : Maybe AttributeType, values : ListOfString }


{-| The ApplicationsResponse data model.
-}
type alias ApplicationsResponse =
    { item : Maybe ListOfApplicationResponse, nextToken : Maybe String }


{-| The ApplicationSettingsResource data model.
-}
type alias ApplicationSettingsResource =
    { applicationId : String
    , campaignHook : Maybe CampaignHook
    , lastModifiedDate : Maybe String
    , limits : Maybe CampaignLimits
    , quietTime : Maybe QuietTime
    }


{-| The ApplicationResponse data model.
-}
type alias ApplicationResponse =
    { arn : String, id : String, name : String, tags : Maybe MapOfString }


{-| The ApplicationDateRangeKpiResponse data model.
-}
type alias ApplicationDateRangeKpiResponse =
    { applicationId : String
    , endTime : String
    , kpiName : String
    , kpiResult : BaseKpiResult
    , nextToken : Maybe String
    , startTime : String
    }


{-| The AddressConfiguration data model.
-}
type alias AddressConfiguration =
    { bodyOverride : Maybe String
    , channelType : Maybe ChannelType
    , context : Maybe MapOfString
    , rawContent : Maybe String
    , substitutions : Maybe MapOfListOfString
    , titleOverride : Maybe String
    }


{-| The ActivityResponse data model.
-}
type alias ActivityResponse =
    { applicationId : String
    , campaignId : String
    , end : Maybe String
    , id : String
    , result : Maybe String
    , scheduledStart : Maybe String
    , start : Maybe String
    , state : Maybe String
    , successfulEndpointCount : Maybe Int
    , timezonesCompletedCount : Maybe Int
    , timezonesTotalCount : Maybe Int
    , totalEndpointCount : Maybe Int
    , treatmentId : Maybe String
    }


{-| The ActivitiesResponse data model.
-}
type alias ActivitiesResponse =
    { item : ListOfActivityResponse, nextToken : Maybe String }


{-| The Action data model.
-}
type Action
    = ActionOpenApp
    | ActionDeepLink
    | ActionUrl


{-| The Action data model.
-}
action : Enum Action
action =
    Enum.define
        [ ActionOpenApp, ActionDeepLink, ActionUrl ]
        (\val ->
            case val of
                ActionOpenApp ->
                    "OPEN_APP"

                ActionDeepLink ->
                    "DEEP_LINK"

                ActionUrl ->
                    "URL"
        )


{-| The ApnsvoipSandboxChannelResponse data model.
-}
type alias ApnsvoipSandboxChannelResponse =
    { applicationId : Maybe String
    , creationDate : Maybe String
    , defaultAuthenticationMethod : Maybe String
    , enabled : Maybe Bool
    , hasCredential : Maybe Bool
    , hasTokenKey : Maybe Bool
    , id : Maybe String
    , isArchived : Maybe Bool
    , lastModifiedBy : Maybe String
    , lastModifiedDate : Maybe String
    , platform : String
    , version : Maybe Int
    }


{-| The ApnsvoipSandboxChannelRequest data model.
-}
type alias ApnsvoipSandboxChannelRequest =
    { bundleId : Maybe String
    , certificate : Maybe String
    , defaultAuthenticationMethod : Maybe String
    , enabled : Maybe Bool
    , privateKey : Maybe String
    , teamId : Maybe String
    , tokenKey : Maybe String
    , tokenKeyId : Maybe String
    }


{-| The ApnsvoipChannelResponse data model.
-}
type alias ApnsvoipChannelResponse =
    { applicationId : Maybe String
    , creationDate : Maybe String
    , defaultAuthenticationMethod : Maybe String
    , enabled : Maybe Bool
    , hasCredential : Maybe Bool
    , hasTokenKey : Maybe Bool
    , id : Maybe String
    , isArchived : Maybe Bool
    , lastModifiedBy : Maybe String
    , lastModifiedDate : Maybe String
    , platform : String
    , version : Maybe Int
    }


{-| The ApnsvoipChannelRequest data model.
-}
type alias ApnsvoipChannelRequest =
    { bundleId : Maybe String
    , certificate : Maybe String
    , defaultAuthenticationMethod : Maybe String
    , enabled : Maybe Bool
    , privateKey : Maybe String
    , teamId : Maybe String
    , tokenKey : Maybe String
    , tokenKeyId : Maybe String
    }


{-| The ApnssandboxChannelResponse data model.
-}
type alias ApnssandboxChannelResponse =
    { applicationId : Maybe String
    , creationDate : Maybe String
    , defaultAuthenticationMethod : Maybe String
    , enabled : Maybe Bool
    , hasCredential : Maybe Bool
    , hasTokenKey : Maybe Bool
    , id : Maybe String
    , isArchived : Maybe Bool
    , lastModifiedBy : Maybe String
    , lastModifiedDate : Maybe String
    , platform : String
    , version : Maybe Int
    }


{-| The ApnssandboxChannelRequest data model.
-}
type alias ApnssandboxChannelRequest =
    { bundleId : Maybe String
    , certificate : Maybe String
    , defaultAuthenticationMethod : Maybe String
    , enabled : Maybe Bool
    , privateKey : Maybe String
    , teamId : Maybe String
    , tokenKey : Maybe String
    , tokenKeyId : Maybe String
    }


{-| The Apnsmessage data model.
-}
type alias Apnsmessage =
    { action : Maybe Action
    , badge : Maybe Int
    , body : Maybe String
    , category : Maybe String
    , collapseId : Maybe String
    , data : Maybe MapOfString
    , mediaUrl : Maybe String
    , preferredAuthenticationMethod : Maybe String
    , priority : Maybe String
    , rawContent : Maybe String
    , silentPush : Maybe Bool
    , sound : Maybe String
    , substitutions : Maybe MapOfListOfString
    , threadId : Maybe String
    , timeToLive : Maybe Int
    , title : Maybe String
    , url : Maybe String
    }


{-| The ApnschannelResponse data model.
-}
type alias ApnschannelResponse =
    { applicationId : Maybe String
    , creationDate : Maybe String
    , defaultAuthenticationMethod : Maybe String
    , enabled : Maybe Bool
    , hasCredential : Maybe Bool
    , hasTokenKey : Maybe Bool
    , id : Maybe String
    , isArchived : Maybe Bool
    , lastModifiedBy : Maybe String
    , lastModifiedDate : Maybe String
    , platform : String
    , version : Maybe Int
    }


{-| The ApnschannelRequest data model.
-}
type alias ApnschannelRequest =
    { bundleId : Maybe String
    , certificate : Maybe String
    , defaultAuthenticationMethod : Maybe String
    , enabled : Maybe Bool
    , privateKey : Maybe String
    , teamId : Maybe String
    , tokenKey : Maybe String
    , tokenKeyId : Maybe String
    }


{-| The Admmessage data model.
-}
type alias Admmessage =
    { action : Maybe Action
    , body : Maybe String
    , consolidationKey : Maybe String
    , data : Maybe MapOfString
    , expiresAfter : Maybe String
    , iconReference : Maybe String
    , imageIconUrl : Maybe String
    , imageUrl : Maybe String
    , md5 : Maybe String
    , rawContent : Maybe String
    , silentPush : Maybe Bool
    , smallImageIconUrl : Maybe String
    , sound : Maybe String
    , substitutions : Maybe MapOfListOfString
    , title : Maybe String
    , url : Maybe String
    }


{-| The AdmchannelResponse data model.
-}
type alias AdmchannelResponse =
    { applicationId : Maybe String
    , creationDate : Maybe String
    , enabled : Maybe Bool
    , hasCredential : Maybe Bool
    , id : Maybe String
    , isArchived : Maybe Bool
    , lastModifiedBy : Maybe String
    , lastModifiedDate : Maybe String
    , platform : String
    , version : Maybe Int
    }


{-| The AdmchannelRequest data model.
-}
type alias AdmchannelRequest =
    { clientId : String, clientSecret : String, enabled : Maybe Bool }


{-| Encoder for AdmchannelRequest.
-}
admchannelRequestEncoder : AdmchannelRequest -> Value
admchannelRequestEncoder val =
    [ ( "ClientId", val.clientId ) |> EncodeOpt.field Json.Encode.string
    , ( "ClientSecret", val.clientSecret ) |> EncodeOpt.field Json.Encode.string
    , ( "Enabled", val.enabled ) |> EncodeOpt.optionalField Json.Encode.bool
    ]
        |> EncodeOpt.objectMaySkip


{-| Decoder for AdmchannelResponse.
-}
admchannelResponseDecoder : Decoder AdmchannelResponse
admchannelResponseDecoder =
    Json.Decode.succeed AdmchannelResponse
        |> Pipeline.optional "ApplicationId" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "CreationDate" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "Enabled" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "HasCredential" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "Id" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "IsArchived" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "LastModifiedBy" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "LastModifiedDate" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.required "Platform" Json.Decode.string
        |> Pipeline.optional "Version" (Json.Decode.maybe Json.Decode.int) Nothing


{-| Encoder for Admmessage.
-}
admmessageEncoder : Admmessage -> Value
admmessageEncoder val =
    [ ( "Action", val.action ) |> EncodeOpt.optionalField (Codec.encoder actionCodec)
    , ( "Body", val.body ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "ConsolidationKey", val.consolidationKey ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Data", val.data ) |> EncodeOpt.optionalField (Codec.encoder mapOfStringCodec)
    , ( "ExpiresAfter", val.expiresAfter ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "IconReference", val.iconReference ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "ImageIconUrl", val.imageIconUrl ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "ImageUrl", val.imageUrl ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "MD5", val.md5 ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "RawContent", val.rawContent ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "SilentPush", val.silentPush ) |> EncodeOpt.optionalField Json.Encode.bool
    , ( "SmallImageIconUrl", val.smallImageIconUrl ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Sound", val.sound ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Substitutions", val.substitutions ) |> EncodeOpt.optionalField (Codec.encoder mapOfListOfStringCodec)
    , ( "Title", val.title ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Url", val.url ) |> EncodeOpt.optionalField Json.Encode.string
    ]
        |> EncodeOpt.objectMaySkip


{-| Encoder for ApnschannelRequest.
-}
apnschannelRequestEncoder : ApnschannelRequest -> Value
apnschannelRequestEncoder val =
    [ ( "BundleId", val.bundleId ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Certificate", val.certificate ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "DefaultAuthenticationMethod", val.defaultAuthenticationMethod ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Enabled", val.enabled ) |> EncodeOpt.optionalField Json.Encode.bool
    , ( "PrivateKey", val.privateKey ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "TeamId", val.teamId ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "TokenKey", val.tokenKey ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "TokenKeyId", val.tokenKeyId ) |> EncodeOpt.optionalField Json.Encode.string
    ]
        |> EncodeOpt.objectMaySkip


{-| Decoder for ApnschannelResponse.
-}
apnschannelResponseDecoder : Decoder ApnschannelResponse
apnschannelResponseDecoder =
    Json.Decode.succeed ApnschannelResponse
        |> Pipeline.optional "ApplicationId" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "CreationDate" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "DefaultAuthenticationMethod" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "Enabled" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "HasCredential" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "HasTokenKey" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "Id" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "IsArchived" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "LastModifiedBy" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "LastModifiedDate" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.required "Platform" Json.Decode.string
        |> Pipeline.optional "Version" (Json.Decode.maybe Json.Decode.int) Nothing


{-| Encoder for Apnsmessage.
-}
apnsmessageEncoder : Apnsmessage -> Value
apnsmessageEncoder val =
    [ ( "Action", val.action ) |> EncodeOpt.optionalField (Codec.encoder actionCodec)
    , ( "Badge", val.badge ) |> EncodeOpt.optionalField Json.Encode.int
    , ( "Body", val.body ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Category", val.category ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "CollapseId", val.collapseId ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Data", val.data ) |> EncodeOpt.optionalField (Codec.encoder mapOfStringCodec)
    , ( "MediaUrl", val.mediaUrl ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "PreferredAuthenticationMethod", val.preferredAuthenticationMethod )
        |> EncodeOpt.optionalField Json.Encode.string
    , ( "Priority", val.priority ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "RawContent", val.rawContent ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "SilentPush", val.silentPush ) |> EncodeOpt.optionalField Json.Encode.bool
    , ( "Sound", val.sound ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Substitutions", val.substitutions ) |> EncodeOpt.optionalField (Codec.encoder mapOfListOfStringCodec)
    , ( "ThreadId", val.threadId ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "TimeToLive", val.timeToLive ) |> EncodeOpt.optionalField Json.Encode.int
    , ( "Title", val.title ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Url", val.url ) |> EncodeOpt.optionalField Json.Encode.string
    ]
        |> EncodeOpt.objectMaySkip


{-| Encoder for ApnssandboxChannelRequest.
-}
apnssandboxChannelRequestEncoder : ApnssandboxChannelRequest -> Value
apnssandboxChannelRequestEncoder val =
    [ ( "BundleId", val.bundleId ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Certificate", val.certificate ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "DefaultAuthenticationMethod", val.defaultAuthenticationMethod ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Enabled", val.enabled ) |> EncodeOpt.optionalField Json.Encode.bool
    , ( "PrivateKey", val.privateKey ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "TeamId", val.teamId ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "TokenKey", val.tokenKey ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "TokenKeyId", val.tokenKeyId ) |> EncodeOpt.optionalField Json.Encode.string
    ]
        |> EncodeOpt.objectMaySkip


{-| Decoder for ApnssandboxChannelResponse.
-}
apnssandboxChannelResponseDecoder : Decoder ApnssandboxChannelResponse
apnssandboxChannelResponseDecoder =
    Json.Decode.succeed ApnssandboxChannelResponse
        |> Pipeline.optional "ApplicationId" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "CreationDate" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "DefaultAuthenticationMethod" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "Enabled" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "HasCredential" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "HasTokenKey" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "Id" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "IsArchived" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "LastModifiedBy" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "LastModifiedDate" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.required "Platform" Json.Decode.string
        |> Pipeline.optional "Version" (Json.Decode.maybe Json.Decode.int) Nothing


{-| Encoder for ApnsvoipChannelRequest.
-}
apnsvoipChannelRequestEncoder : ApnsvoipChannelRequest -> Value
apnsvoipChannelRequestEncoder val =
    [ ( "BundleId", val.bundleId ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Certificate", val.certificate ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "DefaultAuthenticationMethod", val.defaultAuthenticationMethod ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Enabled", val.enabled ) |> EncodeOpt.optionalField Json.Encode.bool
    , ( "PrivateKey", val.privateKey ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "TeamId", val.teamId ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "TokenKey", val.tokenKey ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "TokenKeyId", val.tokenKeyId ) |> EncodeOpt.optionalField Json.Encode.string
    ]
        |> EncodeOpt.objectMaySkip


{-| Decoder for ApnsvoipChannelResponse.
-}
apnsvoipChannelResponseDecoder : Decoder ApnsvoipChannelResponse
apnsvoipChannelResponseDecoder =
    Json.Decode.succeed ApnsvoipChannelResponse
        |> Pipeline.optional "ApplicationId" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "CreationDate" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "DefaultAuthenticationMethod" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "Enabled" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "HasCredential" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "HasTokenKey" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "Id" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "IsArchived" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "LastModifiedBy" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "LastModifiedDate" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.required "Platform" Json.Decode.string
        |> Pipeline.optional "Version" (Json.Decode.maybe Json.Decode.int) Nothing


{-| Encoder for ApnsvoipSandboxChannelRequest.
-}
apnsvoipSandboxChannelRequestEncoder : ApnsvoipSandboxChannelRequest -> Value
apnsvoipSandboxChannelRequestEncoder val =
    [ ( "BundleId", val.bundleId ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Certificate", val.certificate ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "DefaultAuthenticationMethod", val.defaultAuthenticationMethod ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Enabled", val.enabled ) |> EncodeOpt.optionalField Json.Encode.bool
    , ( "PrivateKey", val.privateKey ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "TeamId", val.teamId ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "TokenKey", val.tokenKey ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "TokenKeyId", val.tokenKeyId ) |> EncodeOpt.optionalField Json.Encode.string
    ]
        |> EncodeOpt.objectMaySkip


{-| Decoder for ApnsvoipSandboxChannelResponse.
-}
apnsvoipSandboxChannelResponseDecoder : Decoder ApnsvoipSandboxChannelResponse
apnsvoipSandboxChannelResponseDecoder =
    Json.Decode.succeed ApnsvoipSandboxChannelResponse
        |> Pipeline.optional "ApplicationId" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "CreationDate" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "DefaultAuthenticationMethod" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "Enabled" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "HasCredential" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "HasTokenKey" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "Id" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "IsArchived" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "LastModifiedBy" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "LastModifiedDate" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.required "Platform" Json.Decode.string
        |> Pipeline.optional "Version" (Json.Decode.maybe Json.Decode.int) Nothing


{-| Codec for Action.
-}
actionCodec : Codec Action
actionCodec =
    Codec.build (Enum.encoder action) (Enum.decoder action)


{-| Decoder for ActivitiesResponse.
-}
activitiesResponseDecoder : Decoder ActivitiesResponse
activitiesResponseDecoder =
    Json.Decode.succeed ActivitiesResponse
        |> Pipeline.required "Item" listOfActivityResponseDecoder
        |> Pipeline.optional "NextToken" (Json.Decode.maybe Json.Decode.string) Nothing


{-| Decoder for ActivityResponse.
-}
activityResponseDecoder : Decoder ActivityResponse
activityResponseDecoder =
    Json.Decode.succeed ActivityResponse
        |> Pipeline.required "ApplicationId" Json.Decode.string
        |> Pipeline.required "CampaignId" Json.Decode.string
        |> Pipeline.optional "End" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.required "Id" Json.Decode.string
        |> Pipeline.optional "Result" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "ScheduledStart" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "Start" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "State" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "SuccessfulEndpointCount" (Json.Decode.maybe Json.Decode.int) Nothing
        |> Pipeline.optional "TimezonesCompletedCount" (Json.Decode.maybe Json.Decode.int) Nothing
        |> Pipeline.optional "TimezonesTotalCount" (Json.Decode.maybe Json.Decode.int) Nothing
        |> Pipeline.optional "TotalEndpointCount" (Json.Decode.maybe Json.Decode.int) Nothing
        |> Pipeline.optional "TreatmentId" (Json.Decode.maybe Json.Decode.string) Nothing


{-| Encoder for AddressConfiguration.
-}
addressConfigurationEncoder : AddressConfiguration -> Value
addressConfigurationEncoder val =
    [ ( "BodyOverride", val.bodyOverride ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "ChannelType", val.channelType ) |> EncodeOpt.optionalField (Codec.encoder channelTypeCodec)
    , ( "Context", val.context ) |> EncodeOpt.optionalField (Codec.encoder mapOfStringCodec)
    , ( "RawContent", val.rawContent ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Substitutions", val.substitutions ) |> EncodeOpt.optionalField (Codec.encoder mapOfListOfStringCodec)
    , ( "TitleOverride", val.titleOverride ) |> EncodeOpt.optionalField Json.Encode.string
    ]
        |> EncodeOpt.objectMaySkip


{-| Decoder for ApplicationDateRangeKpiResponse.
-}
applicationDateRangeKpiResponseDecoder : Decoder ApplicationDateRangeKpiResponse
applicationDateRangeKpiResponseDecoder =
    Json.Decode.succeed ApplicationDateRangeKpiResponse
        |> Pipeline.required "ApplicationId" Json.Decode.string
        |> Pipeline.required "EndTime" Json.Decode.string
        |> Pipeline.required "KpiName" Json.Decode.string
        |> Pipeline.required "KpiResult" baseKpiResultDecoder
        |> Pipeline.optional "NextToken" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.required "StartTime" Json.Decode.string


{-| Decoder for ApplicationResponse.
-}
applicationResponseDecoder : Decoder ApplicationResponse
applicationResponseDecoder =
    Json.Decode.succeed ApplicationResponse
        |> Pipeline.required "Arn" Json.Decode.string
        |> Pipeline.required "Id" Json.Decode.string
        |> Pipeline.required "Name" Json.Decode.string
        |> Pipeline.optional "tags" (Json.Decode.maybe (Codec.decoder mapOfStringCodec)) Nothing


{-| Decoder for ApplicationSettingsResource.
-}
applicationSettingsResourceDecoder : Decoder ApplicationSettingsResource
applicationSettingsResourceDecoder =
    Json.Decode.succeed ApplicationSettingsResource
        |> Pipeline.required "ApplicationId" Json.Decode.string
        |> Pipeline.optional "CampaignHook" (Json.Decode.maybe (Codec.decoder campaignHookCodec)) Nothing
        |> Pipeline.optional "LastModifiedDate" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "Limits" (Json.Decode.maybe (Codec.decoder campaignLimitsCodec)) Nothing
        |> Pipeline.optional "QuietTime" (Json.Decode.maybe (Codec.decoder quietTimeCodec)) Nothing


{-| Decoder for ApplicationsResponse.
-}
applicationsResponseDecoder : Decoder ApplicationsResponse
applicationsResponseDecoder =
    Json.Decode.succeed ApplicationsResponse
        |> Pipeline.optional "Item" (Json.Decode.maybe listOfApplicationResponseDecoder) Nothing
        |> Pipeline.optional "NextToken" (Json.Decode.maybe Json.Decode.string) Nothing


{-| Codec for AttributeDimension.
-}
attributeDimensionCodec : Codec AttributeDimension
attributeDimensionCodec =
    Codec.object AttributeDimension
        |> Codec.optionalField "AttributeType" .attributeType attributeTypeCodec
        |> Codec.field "Values" .values listOfStringCodec
        |> Codec.buildObject


{-| Codec for AttributeType.
-}
attributeTypeCodec : Codec AttributeType
attributeTypeCodec =
    Codec.build (Enum.encoder attributeType) (Enum.decoder attributeType)


{-| Decoder for AttributesResource.
-}
attributesResourceDecoder : Decoder AttributesResource
attributesResourceDecoder =
    Json.Decode.succeed AttributesResource
        |> Pipeline.required "ApplicationId" Json.Decode.string
        |> Pipeline.required "AttributeType" Json.Decode.string
        |> Pipeline.optional "Attributes" (Json.Decode.maybe (Codec.decoder listOfStringCodec)) Nothing


{-| Encoder for BaiduChannelRequest.
-}
baiduChannelRequestEncoder : BaiduChannelRequest -> Value
baiduChannelRequestEncoder val =
    [ ( "ApiKey", val.apiKey ) |> EncodeOpt.field Json.Encode.string
    , ( "Enabled", val.enabled ) |> EncodeOpt.optionalField Json.Encode.bool
    , ( "SecretKey", val.secretKey ) |> EncodeOpt.field Json.Encode.string
    ]
        |> EncodeOpt.objectMaySkip


{-| Decoder for BaiduChannelResponse.
-}
baiduChannelResponseDecoder : Decoder BaiduChannelResponse
baiduChannelResponseDecoder =
    Json.Decode.succeed BaiduChannelResponse
        |> Pipeline.optional "ApplicationId" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "CreationDate" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.required "Credential" Json.Decode.string
        |> Pipeline.optional "Enabled" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "HasCredential" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "Id" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "IsArchived" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "LastModifiedBy" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "LastModifiedDate" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.required "Platform" Json.Decode.string
        |> Pipeline.optional "Version" (Json.Decode.maybe Json.Decode.int) Nothing


{-| Encoder for BaiduMessage.
-}
baiduMessageEncoder : BaiduMessage -> Value
baiduMessageEncoder val =
    [ ( "Action", val.action ) |> EncodeOpt.optionalField (Codec.encoder actionCodec)
    , ( "Body", val.body ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Data", val.data ) |> EncodeOpt.optionalField (Codec.encoder mapOfStringCodec)
    , ( "IconReference", val.iconReference ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "ImageIconUrl", val.imageIconUrl ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "ImageUrl", val.imageUrl ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "RawContent", val.rawContent ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "SilentPush", val.silentPush ) |> EncodeOpt.optionalField Json.Encode.bool
    , ( "SmallImageIconUrl", val.smallImageIconUrl ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Sound", val.sound ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Substitutions", val.substitutions ) |> EncodeOpt.optionalField (Codec.encoder mapOfListOfStringCodec)
    , ( "TimeToLive", val.timeToLive ) |> EncodeOpt.optionalField Json.Encode.int
    , ( "Title", val.title ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Url", val.url ) |> EncodeOpt.optionalField Json.Encode.string
    ]
        |> EncodeOpt.objectMaySkip


{-| Decoder for BaseKpiResult.
-}
baseKpiResultDecoder : Decoder BaseKpiResult
baseKpiResultDecoder =
    Json.Decode.succeed BaseKpiResult |> Pipeline.required "Rows" listOfResultRowDecoder


{-| Decoder for CampaignDateRangeKpiResponse.
-}
campaignDateRangeKpiResponseDecoder : Decoder CampaignDateRangeKpiResponse
campaignDateRangeKpiResponseDecoder =
    Json.Decode.succeed CampaignDateRangeKpiResponse
        |> Pipeline.required "ApplicationId" Json.Decode.string
        |> Pipeline.required "CampaignId" Json.Decode.string
        |> Pipeline.required "EndTime" Json.Decode.string
        |> Pipeline.required "KpiName" Json.Decode.string
        |> Pipeline.required "KpiResult" baseKpiResultDecoder
        |> Pipeline.optional "NextToken" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.required "StartTime" Json.Decode.string


{-| Codec for CampaignEmailMessage.
-}
campaignEmailMessageCodec : Codec CampaignEmailMessage
campaignEmailMessageCodec =
    Codec.object CampaignEmailMessage
        |> Codec.optionalField "Body" .body Codec.string
        |> Codec.optionalField "FromAddress" .fromAddress Codec.string
        |> Codec.optionalField "HtmlBody" .htmlBody Codec.string
        |> Codec.field "Title" .title Codec.string
        |> Codec.buildObject


{-| Codec for CampaignEventFilter.
-}
campaignEventFilterCodec : Codec CampaignEventFilter
campaignEventFilterCodec =
    Codec.object CampaignEventFilter
        |> Codec.field "Dimensions" .dimensions eventDimensionsCodec
        |> Codec.field "FilterType" .filterType filterTypeCodec
        |> Codec.buildObject


{-| Codec for CampaignHook.
-}
campaignHookCodec : Codec CampaignHook
campaignHookCodec =
    Codec.object CampaignHook
        |> Codec.optionalField "LambdaFunctionName" .lambdaFunctionName Codec.string
        |> Codec.optionalField "Mode" .mode modeCodec
        |> Codec.optionalField "WebUrl" .webUrl Codec.string
        |> Codec.buildObject


{-| Codec for CampaignLimits.
-}
campaignLimitsCodec : Codec CampaignLimits
campaignLimitsCodec =
    Codec.object CampaignLimits
        |> Codec.optionalField "Daily" .daily Codec.int
        |> Codec.optionalField "MaximumDuration" .maximumDuration Codec.int
        |> Codec.optionalField "MessagesPerSecond" .messagesPerSecond Codec.int
        |> Codec.optionalField "Total" .total Codec.int
        |> Codec.buildObject


{-| Decoder for CampaignResponse.
-}
campaignResponseDecoder : Decoder CampaignResponse
campaignResponseDecoder =
    Json.Decode.succeed CampaignResponse
        |> Pipeline.optional "AdditionalTreatments" (Json.Decode.maybe listOfTreatmentResourceDecoder) Nothing
        |> Pipeline.required "ApplicationId" Json.Decode.string
        |> Pipeline.required "Arn" Json.Decode.string
        |> Pipeline.required "CreationDate" Json.Decode.string
        |> Pipeline.optional "DefaultState" (Json.Decode.maybe campaignStateDecoder) Nothing
        |> Pipeline.optional "Description" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "HoldoutPercent" (Json.Decode.maybe Json.Decode.int) Nothing
        |> Pipeline.optional "Hook" (Json.Decode.maybe (Codec.decoder campaignHookCodec)) Nothing
        |> Pipeline.required "Id" Json.Decode.string
        |> Pipeline.optional "IsPaused" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.required "LastModifiedDate" Json.Decode.string
        |> Pipeline.optional "Limits" (Json.Decode.maybe (Codec.decoder campaignLimitsCodec)) Nothing
        |> Pipeline.optional
            "MessageConfiguration"
            (Json.Decode.maybe (Codec.decoder messageConfigurationCodec))
            Nothing
        |> Pipeline.optional "Name" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "Schedule" (Json.Decode.maybe (Codec.decoder scheduleCodec)) Nothing
        |> Pipeline.required "SegmentId" Json.Decode.string
        |> Pipeline.required "SegmentVersion" Json.Decode.int
        |> Pipeline.optional "State" (Json.Decode.maybe campaignStateDecoder) Nothing
        |> Pipeline.optional "TreatmentDescription" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "TreatmentName" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "Version" (Json.Decode.maybe Json.Decode.int) Nothing
        |> Pipeline.optional "tags" (Json.Decode.maybe (Codec.decoder mapOfStringCodec)) Nothing


{-| Codec for CampaignSmsMessage.
-}
campaignSmsMessageCodec : Codec CampaignSmsMessage
campaignSmsMessageCodec =
    Codec.object CampaignSmsMessage
        |> Codec.optionalField "Body" .body Codec.string
        |> Codec.optionalField "MessageType" .messageType messageTypeCodec
        |> Codec.optionalField "SenderId" .senderId Codec.string
        |> Codec.buildObject


{-| Decoder for CampaignState.
-}
campaignStateDecoder : Decoder CampaignState
campaignStateDecoder =
    Json.Decode.succeed CampaignState
        |> Pipeline.optional "CampaignStatus" (Json.Decode.maybe campaignStatusDecoder) Nothing


{-| Decoder for CampaignStatus.
-}
campaignStatusDecoder : Decoder CampaignStatus
campaignStatusDecoder =
    Enum.decoder campaignStatus


{-| Decoder for CampaignsResponse.
-}
campaignsResponseDecoder : Decoder CampaignsResponse
campaignsResponseDecoder =
    Json.Decode.succeed CampaignsResponse
        |> Pipeline.required "Item" listOfCampaignResponseDecoder
        |> Pipeline.optional "NextToken" (Json.Decode.maybe Json.Decode.string) Nothing


{-| Decoder for ChannelResponse.
-}
channelResponseDecoder : Decoder ChannelResponse
channelResponseDecoder =
    Json.Decode.succeed ChannelResponse
        |> Pipeline.optional "ApplicationId" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "CreationDate" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "Enabled" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "HasCredential" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "Id" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "IsArchived" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "LastModifiedBy" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "LastModifiedDate" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "Version" (Json.Decode.maybe Json.Decode.int) Nothing


{-| Codec for ChannelType.
-}
channelTypeCodec : Codec ChannelType
channelTypeCodec =
    Codec.build (Enum.encoder channelType) (Enum.decoder channelType)


{-| Decoder for ChannelsResponse.
-}
channelsResponseDecoder : Decoder ChannelsResponse
channelsResponseDecoder =
    Json.Decode.succeed ChannelsResponse |> Pipeline.required "Channels" mapOfChannelResponseDecoder


{-| Encoder for CreateApplicationRequest.
-}
createApplicationRequestEncoder : CreateApplicationRequest -> Value
createApplicationRequestEncoder val =
    [ ( "Name", val.name ) |> EncodeOpt.field Json.Encode.string
    , ( "tags", val.tags ) |> EncodeOpt.optionalField (Codec.encoder mapOfStringCodec)
    ]
        |> EncodeOpt.objectMaySkip


{-| Encoder for DefaultMessage.
-}
defaultMessageEncoder : DefaultMessage -> Value
defaultMessageEncoder val =
    [ ( "Body", val.body ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Substitutions", val.substitutions ) |> EncodeOpt.optionalField (Codec.encoder mapOfListOfStringCodec)
    ]
        |> EncodeOpt.objectMaySkip


{-| Encoder for DefaultPushNotificationMessage.
-}
defaultPushNotificationMessageEncoder : DefaultPushNotificationMessage -> Value
defaultPushNotificationMessageEncoder val =
    [ ( "Action", val.action ) |> EncodeOpt.optionalField (Codec.encoder actionCodec)
    , ( "Body", val.body ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Data", val.data ) |> EncodeOpt.optionalField (Codec.encoder mapOfStringCodec)
    , ( "SilentPush", val.silentPush ) |> EncodeOpt.optionalField Json.Encode.bool
    , ( "Substitutions", val.substitutions ) |> EncodeOpt.optionalField (Codec.encoder mapOfListOfStringCodec)
    , ( "Title", val.title ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Url", val.url ) |> EncodeOpt.optionalField Json.Encode.string
    ]
        |> EncodeOpt.objectMaySkip


{-| Decoder for DeliveryStatus.
-}
deliveryStatusDecoder : Decoder DeliveryStatus
deliveryStatusDecoder =
    Enum.decoder deliveryStatus


{-| Codec for DimensionType.
-}
dimensionTypeCodec : Codec DimensionType
dimensionTypeCodec =
    Codec.build (Enum.encoder dimensionType) (Enum.decoder dimensionType)


{-| Encoder for DirectMessageConfiguration.
-}
directMessageConfigurationEncoder : DirectMessageConfiguration -> Value
directMessageConfigurationEncoder val =
    [ ( "ADMMessage", val.admmessage ) |> EncodeOpt.optionalField admmessageEncoder
    , ( "APNSMessage", val.apnsmessage ) |> EncodeOpt.optionalField apnsmessageEncoder
    , ( "BaiduMessage", val.baiduMessage ) |> EncodeOpt.optionalField baiduMessageEncoder
    , ( "DefaultMessage", val.defaultMessage ) |> EncodeOpt.optionalField defaultMessageEncoder
    , ( "DefaultPushNotificationMessage", val.defaultPushNotificationMessage )
        |> EncodeOpt.optionalField defaultPushNotificationMessageEncoder
    , ( "EmailMessage", val.emailMessage ) |> EncodeOpt.optionalField emailMessageEncoder
    , ( "GCMMessage", val.gcmmessage ) |> EncodeOpt.optionalField gcmmessageEncoder
    , ( "SMSMessage", val.smsmessage ) |> EncodeOpt.optionalField smsmessageEncoder
    , ( "VoiceMessage", val.voiceMessage ) |> EncodeOpt.optionalField voiceMessageEncoder
    ]
        |> EncodeOpt.objectMaySkip


{-| Codec for Duration.
-}
durationCodec : Codec Duration
durationCodec =
    Codec.build (Enum.encoder duration) (Enum.decoder duration)


{-| Encoder for EmailChannelRequest.
-}
emailChannelRequestEncoder : EmailChannelRequest -> Value
emailChannelRequestEncoder val =
    [ ( "ConfigurationSet", val.configurationSet ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Enabled", val.enabled ) |> EncodeOpt.optionalField Json.Encode.bool
    , ( "FromAddress", val.fromAddress ) |> EncodeOpt.field Json.Encode.string
    , ( "Identity", val.identity ) |> EncodeOpt.field Json.Encode.string
    , ( "RoleArn", val.roleArn ) |> EncodeOpt.optionalField Json.Encode.string
    ]
        |> EncodeOpt.objectMaySkip


{-| Decoder for EmailChannelResponse.
-}
emailChannelResponseDecoder : Decoder EmailChannelResponse
emailChannelResponseDecoder =
    Json.Decode.succeed EmailChannelResponse
        |> Pipeline.optional "ApplicationId" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "ConfigurationSet" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "CreationDate" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "Enabled" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "FromAddress" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "HasCredential" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "Id" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "Identity" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "IsArchived" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "LastModifiedBy" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "LastModifiedDate" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "MessagesPerSecond" (Json.Decode.maybe Json.Decode.int) Nothing
        |> Pipeline.required "Platform" Json.Decode.string
        |> Pipeline.optional "RoleArn" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "Version" (Json.Decode.maybe Json.Decode.int) Nothing


{-| Encoder for EmailMessage.
-}
emailMessageEncoder : EmailMessage -> Value
emailMessageEncoder val =
    [ ( "Body", val.body ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "FeedbackForwardingAddress", val.feedbackForwardingAddress ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "FromAddress", val.fromAddress ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "RawEmail", val.rawEmail ) |> EncodeOpt.optionalField rawEmailEncoder
    , ( "ReplyToAddresses", val.replyToAddresses ) |> EncodeOpt.optionalField (Codec.encoder listOfStringCodec)
    , ( "SimpleEmail", val.simpleEmail ) |> EncodeOpt.optionalField simpleEmailEncoder
    , ( "Substitutions", val.substitutions ) |> EncodeOpt.optionalField (Codec.encoder mapOfListOfStringCodec)
    ]
        |> EncodeOpt.objectMaySkip


{-| Encoder for EndpointBatchItem.
-}
endpointBatchItemEncoder : EndpointBatchItem -> Value
endpointBatchItemEncoder val =
    [ ( "Address", val.address ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Attributes", val.attributes ) |> EncodeOpt.optionalField (Codec.encoder mapOfListOfStringCodec)
    , ( "ChannelType", val.channelType ) |> EncodeOpt.optionalField (Codec.encoder channelTypeCodec)
    , ( "Demographic", val.demographic ) |> EncodeOpt.optionalField (Codec.encoder endpointDemographicCodec)
    , ( "EffectiveDate", val.effectiveDate ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "EndpointStatus", val.endpointStatus ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Id", val.id ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Location", val.location ) |> EncodeOpt.optionalField (Codec.encoder endpointLocationCodec)
    , ( "Metrics", val.metrics ) |> EncodeOpt.optionalField (Codec.encoder mapOfDoubleCodec)
    , ( "OptOut", val.optOut ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "RequestId", val.requestId ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "User", val.user ) |> EncodeOpt.optionalField (Codec.encoder endpointUserCodec)
    ]
        |> EncodeOpt.objectMaySkip


{-| Encoder for EndpointBatchRequest.
-}
endpointBatchRequestEncoder : EndpointBatchRequest -> Value
endpointBatchRequestEncoder val =
    [ ( "Item", val.item ) |> EncodeOpt.field listOfEndpointBatchItemEncoder ] |> EncodeOpt.objectMaySkip


{-| Codec for EndpointDemographic.
-}
endpointDemographicCodec : Codec EndpointDemographic
endpointDemographicCodec =
    Codec.object EndpointDemographic
        |> Codec.optionalField "AppVersion" .appVersion Codec.string
        |> Codec.optionalField "Locale" .locale Codec.string
        |> Codec.optionalField "Make" .make Codec.string
        |> Codec.optionalField "Model" .model Codec.string
        |> Codec.optionalField "ModelVersion" .modelVersion Codec.string
        |> Codec.optionalField "Platform" .platform Codec.string
        |> Codec.optionalField "PlatformVersion" .platformVersion Codec.string
        |> Codec.optionalField "Timezone" .timezone Codec.string
        |> Codec.buildObject


{-| Decoder for EndpointItemResponse.
-}
endpointItemResponseDecoder : Decoder EndpointItemResponse
endpointItemResponseDecoder =
    Json.Decode.succeed EndpointItemResponse
        |> Pipeline.optional "Message" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "StatusCode" (Json.Decode.maybe Json.Decode.int) Nothing


{-| Codec for EndpointLocation.
-}
endpointLocationCodec : Codec EndpointLocation
endpointLocationCodec =
    Codec.object EndpointLocation
        |> Codec.optionalField "City" .city Codec.string
        |> Codec.optionalField "Country" .country Codec.string
        |> Codec.optionalField "Latitude" .latitude Codec.float
        |> Codec.optionalField "Longitude" .longitude Codec.float
        |> Codec.optionalField "PostalCode" .postalCode Codec.string
        |> Codec.optionalField "Region" .region Codec.string
        |> Codec.buildObject


{-| Decoder for EndpointMessageResult.
-}
endpointMessageResultDecoder : Decoder EndpointMessageResult
endpointMessageResultDecoder =
    Json.Decode.succeed EndpointMessageResult
        |> Pipeline.optional "Address" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.required "DeliveryStatus" deliveryStatusDecoder
        |> Pipeline.optional "MessageId" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.required "StatusCode" Json.Decode.int
        |> Pipeline.optional "StatusMessage" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "UpdatedToken" (Json.Decode.maybe Json.Decode.string) Nothing


{-| Encoder for EndpointRequest.
-}
endpointRequestEncoder : EndpointRequest -> Value
endpointRequestEncoder val =
    [ ( "Address", val.address ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Attributes", val.attributes ) |> EncodeOpt.optionalField (Codec.encoder mapOfListOfStringCodec)
    , ( "ChannelType", val.channelType ) |> EncodeOpt.optionalField (Codec.encoder channelTypeCodec)
    , ( "Demographic", val.demographic ) |> EncodeOpt.optionalField (Codec.encoder endpointDemographicCodec)
    , ( "EffectiveDate", val.effectiveDate ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "EndpointStatus", val.endpointStatus ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Location", val.location ) |> EncodeOpt.optionalField (Codec.encoder endpointLocationCodec)
    , ( "Metrics", val.metrics ) |> EncodeOpt.optionalField (Codec.encoder mapOfDoubleCodec)
    , ( "OptOut", val.optOut ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "RequestId", val.requestId ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "User", val.user ) |> EncodeOpt.optionalField (Codec.encoder endpointUserCodec)
    ]
        |> EncodeOpt.objectMaySkip


{-| Decoder for EndpointResponse.
-}
endpointResponseDecoder : Decoder EndpointResponse
endpointResponseDecoder =
    Json.Decode.succeed EndpointResponse
        |> Pipeline.optional "Address" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "ApplicationId" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "Attributes" (Json.Decode.maybe (Codec.decoder mapOfListOfStringCodec)) Nothing
        |> Pipeline.optional "ChannelType" (Json.Decode.maybe (Codec.decoder channelTypeCodec)) Nothing
        |> Pipeline.optional "CohortId" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "CreationDate" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "Demographic" (Json.Decode.maybe (Codec.decoder endpointDemographicCodec)) Nothing
        |> Pipeline.optional "EffectiveDate" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "EndpointStatus" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "Id" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "Location" (Json.Decode.maybe (Codec.decoder endpointLocationCodec)) Nothing
        |> Pipeline.optional "Metrics" (Json.Decode.maybe (Codec.decoder mapOfDoubleCodec)) Nothing
        |> Pipeline.optional "OptOut" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "RequestId" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "User" (Json.Decode.maybe (Codec.decoder endpointUserCodec)) Nothing


{-| Encoder for EndpointSendConfiguration.
-}
endpointSendConfigurationEncoder : EndpointSendConfiguration -> Value
endpointSendConfigurationEncoder val =
    [ ( "BodyOverride", val.bodyOverride ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Context", val.context ) |> EncodeOpt.optionalField (Codec.encoder mapOfStringCodec)
    , ( "RawContent", val.rawContent ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Substitutions", val.substitutions ) |> EncodeOpt.optionalField (Codec.encoder mapOfListOfStringCodec)
    , ( "TitleOverride", val.titleOverride ) |> EncodeOpt.optionalField Json.Encode.string
    ]
        |> EncodeOpt.objectMaySkip


{-| Codec for EndpointUser.
-}
endpointUserCodec : Codec EndpointUser
endpointUserCodec =
    Codec.object EndpointUser
        |> Codec.optionalField "UserAttributes" .userAttributes mapOfListOfStringCodec
        |> Codec.optionalField "UserId" .userId Codec.string
        |> Codec.buildObject


{-| Decoder for EndpointsResponse.
-}
endpointsResponseDecoder : Decoder EndpointsResponse
endpointsResponseDecoder =
    Json.Decode.succeed EndpointsResponse |> Pipeline.required "Item" listOfEndpointResponseDecoder


{-| Encoder for Event.
-}
eventEncoder : Event -> Value
eventEncoder val =
    [ ( "AppPackageName", val.appPackageName ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "AppTitle", val.appTitle ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "AppVersionCode", val.appVersionCode ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Attributes", val.attributes ) |> EncodeOpt.optionalField (Codec.encoder mapOfStringCodec)
    , ( "ClientSdkVersion", val.clientSdkVersion ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "EventType", val.eventType ) |> EncodeOpt.field Json.Encode.string
    , ( "Metrics", val.metrics ) |> EncodeOpt.optionalField (Codec.encoder mapOfDoubleCodec)
    , ( "SdkName", val.sdkName ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Session", val.session ) |> EncodeOpt.optionalField sessionEncoder
    , ( "Timestamp", val.timestamp ) |> EncodeOpt.field Json.Encode.string
    ]
        |> EncodeOpt.objectMaySkip


{-| Codec for EventDimensions.
-}
eventDimensionsCodec : Codec EventDimensions
eventDimensionsCodec =
    Codec.object EventDimensions
        |> Codec.optionalField "Attributes" .attributes mapOfAttributeDimensionCodec
        |> Codec.optionalField "EventType" .eventType setDimensionCodec
        |> Codec.optionalField "Metrics" .metrics mapOfMetricDimensionCodec
        |> Codec.buildObject


{-| Decoder for EventItemResponse.
-}
eventItemResponseDecoder : Decoder EventItemResponse
eventItemResponseDecoder =
    Json.Decode.succeed EventItemResponse
        |> Pipeline.optional "Message" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "StatusCode" (Json.Decode.maybe Json.Decode.int) Nothing


{-| Decoder for EventStream.
-}
eventStreamDecoder : Decoder EventStream
eventStreamDecoder =
    Json.Decode.succeed EventStream
        |> Pipeline.required "ApplicationId" Json.Decode.string
        |> Pipeline.required "DestinationStreamArn" Json.Decode.string
        |> Pipeline.optional "ExternalId" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "LastModifiedDate" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "LastUpdatedBy" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.required "RoleArn" Json.Decode.string


{-| Encoder for EventsBatch.
-}
eventsBatchEncoder : EventsBatch -> Value
eventsBatchEncoder val =
    [ ( "Endpoint", val.endpoint ) |> EncodeOpt.field publicEndpointEncoder
    , ( "Events", val.events ) |> EncodeOpt.field mapOfEventEncoder
    ]
        |> EncodeOpt.objectMaySkip


{-| Encoder for EventsRequest.
-}
eventsRequestEncoder : EventsRequest -> Value
eventsRequestEncoder val =
    [ ( "BatchItem", val.batchItem ) |> EncodeOpt.field mapOfEventsBatchEncoder ] |> EncodeOpt.objectMaySkip


{-| Decoder for EventsResponse.
-}
eventsResponseDecoder : Decoder EventsResponse
eventsResponseDecoder =
    Json.Decode.succeed EventsResponse
        |> Pipeline.optional "Results" (Json.Decode.maybe mapOfItemResponseDecoder) Nothing


{-| Encoder for ExportJobRequest.
-}
exportJobRequestEncoder : ExportJobRequest -> Value
exportJobRequestEncoder val =
    [ ( "RoleArn", val.roleArn ) |> EncodeOpt.field Json.Encode.string
    , ( "S3UrlPrefix", val.s3UrlPrefix ) |> EncodeOpt.field Json.Encode.string
    , ( "SegmentId", val.segmentId ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "SegmentVersion", val.segmentVersion ) |> EncodeOpt.optionalField Json.Encode.int
    ]
        |> EncodeOpt.objectMaySkip


{-| Decoder for ExportJobResource.
-}
exportJobResourceDecoder : Decoder ExportJobResource
exportJobResourceDecoder =
    Json.Decode.succeed ExportJobResource
        |> Pipeline.required "RoleArn" Json.Decode.string
        |> Pipeline.required "S3UrlPrefix" Json.Decode.string
        |> Pipeline.optional "SegmentId" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "SegmentVersion" (Json.Decode.maybe Json.Decode.int) Nothing


{-| Decoder for ExportJobResponse.
-}
exportJobResponseDecoder : Decoder ExportJobResponse
exportJobResponseDecoder =
    Json.Decode.succeed ExportJobResponse
        |> Pipeline.required "ApplicationId" Json.Decode.string
        |> Pipeline.optional "CompletedPieces" (Json.Decode.maybe Json.Decode.int) Nothing
        |> Pipeline.optional "CompletionDate" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.required "CreationDate" Json.Decode.string
        |> Pipeline.required "Definition" exportJobResourceDecoder
        |> Pipeline.optional "FailedPieces" (Json.Decode.maybe Json.Decode.int) Nothing
        |> Pipeline.optional "Failures" (Json.Decode.maybe (Codec.decoder listOfStringCodec)) Nothing
        |> Pipeline.required "Id" Json.Decode.string
        |> Pipeline.required "JobStatus" jobStatusDecoder
        |> Pipeline.optional "TotalFailures" (Json.Decode.maybe Json.Decode.int) Nothing
        |> Pipeline.optional "TotalPieces" (Json.Decode.maybe Json.Decode.int) Nothing
        |> Pipeline.optional "TotalProcessed" (Json.Decode.maybe Json.Decode.int) Nothing
        |> Pipeline.required "Type" Json.Decode.string


{-| Decoder for ExportJobsResponse.
-}
exportJobsResponseDecoder : Decoder ExportJobsResponse
exportJobsResponseDecoder =
    Json.Decode.succeed ExportJobsResponse
        |> Pipeline.required "Item" listOfExportJobResponseDecoder
        |> Pipeline.optional "NextToken" (Json.Decode.maybe Json.Decode.string) Nothing


{-| Codec for FilterType.
-}
filterTypeCodec : Codec FilterType
filterTypeCodec =
    Codec.build (Enum.encoder filterType) (Enum.decoder filterType)


{-| Codec for Format.
-}
formatCodec : Codec Format
formatCodec =
    Codec.build (Enum.encoder format) (Enum.decoder format)


{-| Codec for Frequency.
-}
frequencyCodec : Codec Frequency
frequencyCodec =
    Codec.build (Enum.encoder frequency) (Enum.decoder frequency)


{-| Encoder for GcmchannelRequest.
-}
gcmchannelRequestEncoder : GcmchannelRequest -> Value
gcmchannelRequestEncoder val =
    [ ( "ApiKey", val.apiKey ) |> EncodeOpt.field Json.Encode.string
    , ( "Enabled", val.enabled ) |> EncodeOpt.optionalField Json.Encode.bool
    ]
        |> EncodeOpt.objectMaySkip


{-| Decoder for GcmchannelResponse.
-}
gcmchannelResponseDecoder : Decoder GcmchannelResponse
gcmchannelResponseDecoder =
    Json.Decode.succeed GcmchannelResponse
        |> Pipeline.optional "ApplicationId" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "CreationDate" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.required "Credential" Json.Decode.string
        |> Pipeline.optional "Enabled" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "HasCredential" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "Id" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "IsArchived" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "LastModifiedBy" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "LastModifiedDate" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.required "Platform" Json.Decode.string
        |> Pipeline.optional "Version" (Json.Decode.maybe Json.Decode.int) Nothing


{-| Encoder for Gcmmessage.
-}
gcmmessageEncoder : Gcmmessage -> Value
gcmmessageEncoder val =
    [ ( "Action", val.action ) |> EncodeOpt.optionalField (Codec.encoder actionCodec)
    , ( "Body", val.body ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "CollapseKey", val.collapseKey ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Data", val.data ) |> EncodeOpt.optionalField (Codec.encoder mapOfStringCodec)
    , ( "IconReference", val.iconReference ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "ImageIconUrl", val.imageIconUrl ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "ImageUrl", val.imageUrl ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Priority", val.priority ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "RawContent", val.rawContent ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "RestrictedPackageName", val.restrictedPackageName ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "SilentPush", val.silentPush ) |> EncodeOpt.optionalField Json.Encode.bool
    , ( "SmallImageIconUrl", val.smallImageIconUrl ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Sound", val.sound ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Substitutions", val.substitutions ) |> EncodeOpt.optionalField (Codec.encoder mapOfListOfStringCodec)
    , ( "TimeToLive", val.timeToLive ) |> EncodeOpt.optionalField Json.Encode.int
    , ( "Title", val.title ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Url", val.url ) |> EncodeOpt.optionalField Json.Encode.string
    ]
        |> EncodeOpt.objectMaySkip


{-| Codec for Gpscoordinates.
-}
gpscoordinatesCodec : Codec Gpscoordinates
gpscoordinatesCodec =
    Codec.object Gpscoordinates
        |> Codec.field "Latitude" .latitude Codec.float
        |> Codec.field "Longitude" .longitude Codec.float
        |> Codec.buildObject


{-| Codec for GpspointDimension.
-}
gpspointDimensionCodec : Codec GpspointDimension
gpspointDimensionCodec =
    Codec.object GpspointDimension
        |> Codec.field "Coordinates" .coordinates gpscoordinatesCodec
        |> Codec.optionalField "RangeInKilometers" .rangeInKilometers Codec.float
        |> Codec.buildObject


{-| Encoder for ImportJobRequest.
-}
importJobRequestEncoder : ImportJobRequest -> Value
importJobRequestEncoder val =
    [ ( "DefineSegment", val.defineSegment ) |> EncodeOpt.optionalField Json.Encode.bool
    , ( "ExternalId", val.externalId ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Format", val.format ) |> EncodeOpt.field (Codec.encoder formatCodec)
    , ( "RegisterEndpoints", val.registerEndpoints ) |> EncodeOpt.optionalField Json.Encode.bool
    , ( "RoleArn", val.roleArn ) |> EncodeOpt.field Json.Encode.string
    , ( "S3Url", val.s3Url ) |> EncodeOpt.field Json.Encode.string
    , ( "SegmentId", val.segmentId ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "SegmentName", val.segmentName ) |> EncodeOpt.optionalField Json.Encode.string
    ]
        |> EncodeOpt.objectMaySkip


{-| Decoder for ImportJobResource.
-}
importJobResourceDecoder : Decoder ImportJobResource
importJobResourceDecoder =
    Json.Decode.succeed ImportJobResource
        |> Pipeline.optional "DefineSegment" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "ExternalId" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.required "Format" (Codec.decoder formatCodec)
        |> Pipeline.optional "RegisterEndpoints" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.required "RoleArn" Json.Decode.string
        |> Pipeline.required "S3Url" Json.Decode.string
        |> Pipeline.optional "SegmentId" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "SegmentName" (Json.Decode.maybe Json.Decode.string) Nothing


{-| Decoder for ImportJobResponse.
-}
importJobResponseDecoder : Decoder ImportJobResponse
importJobResponseDecoder =
    Json.Decode.succeed ImportJobResponse
        |> Pipeline.required "ApplicationId" Json.Decode.string
        |> Pipeline.optional "CompletedPieces" (Json.Decode.maybe Json.Decode.int) Nothing
        |> Pipeline.optional "CompletionDate" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.required "CreationDate" Json.Decode.string
        |> Pipeline.required "Definition" importJobResourceDecoder
        |> Pipeline.optional "FailedPieces" (Json.Decode.maybe Json.Decode.int) Nothing
        |> Pipeline.optional "Failures" (Json.Decode.maybe (Codec.decoder listOfStringCodec)) Nothing
        |> Pipeline.required "Id" Json.Decode.string
        |> Pipeline.required "JobStatus" jobStatusDecoder
        |> Pipeline.optional "TotalFailures" (Json.Decode.maybe Json.Decode.int) Nothing
        |> Pipeline.optional "TotalPieces" (Json.Decode.maybe Json.Decode.int) Nothing
        |> Pipeline.optional "TotalProcessed" (Json.Decode.maybe Json.Decode.int) Nothing
        |> Pipeline.required "Type" Json.Decode.string


{-| Decoder for ImportJobsResponse.
-}
importJobsResponseDecoder : Decoder ImportJobsResponse
importJobsResponseDecoder =
    Json.Decode.succeed ImportJobsResponse
        |> Pipeline.required "Item" listOfImportJobResponseDecoder
        |> Pipeline.optional "NextToken" (Json.Decode.maybe Json.Decode.string) Nothing


{-| Codec for Include.
-}
includeCodec : Codec Include
includeCodec =
    Codec.build (Enum.encoder include) (Enum.decoder include)


{-| Decoder for ItemResponse.
-}
itemResponseDecoder : Decoder ItemResponse
itemResponseDecoder =
    Json.Decode.succeed ItemResponse
        |> Pipeline.optional "EndpointItemResponse" (Json.Decode.maybe endpointItemResponseDecoder) Nothing
        |> Pipeline.optional "EventsItemResponse" (Json.Decode.maybe mapOfEventItemResponseDecoder) Nothing


{-| Decoder for JobStatus.
-}
jobStatusDecoder : Decoder JobStatus
jobStatusDecoder =
    Enum.decoder jobStatus


{-| Decoder for ListOfActivityResponse.
-}
listOfActivityResponseDecoder : Decoder ListOfActivityResponse
listOfActivityResponseDecoder =
    Json.Decode.list activityResponseDecoder


{-| Decoder for ListOfApplicationResponse.
-}
listOfApplicationResponseDecoder : Decoder ListOfApplicationResponse
listOfApplicationResponseDecoder =
    Json.Decode.list applicationResponseDecoder


{-| Decoder for ListOfCampaignResponse.
-}
listOfCampaignResponseDecoder : Decoder ListOfCampaignResponse
listOfCampaignResponseDecoder =
    Json.Decode.list campaignResponseDecoder


{-| Encoder for ListOfEndpointBatchItem.
-}
listOfEndpointBatchItemEncoder : ListOfEndpointBatchItem -> Value
listOfEndpointBatchItemEncoder val =
    Json.Encode.list endpointBatchItemEncoder val


{-| Decoder for ListOfEndpointResponse.
-}
listOfEndpointResponseDecoder : Decoder ListOfEndpointResponse
listOfEndpointResponseDecoder =
    Json.Decode.list endpointResponseDecoder


{-| Decoder for ListOfExportJobResponse.
-}
listOfExportJobResponseDecoder : Decoder ListOfExportJobResponse
listOfExportJobResponseDecoder =
    Json.Decode.list exportJobResponseDecoder


{-| Decoder for ListOfImportJobResponse.
-}
listOfImportJobResponseDecoder : Decoder ListOfImportJobResponse
listOfImportJobResponseDecoder =
    Json.Decode.list importJobResponseDecoder


{-| Decoder for ListOfResultRow.
-}
listOfResultRowDecoder : Decoder ListOfResultRow
listOfResultRowDecoder =
    Json.Decode.list resultRowDecoder


{-| Decoder for ListOfResultRowValue.
-}
listOfResultRowValueDecoder : Decoder ListOfResultRowValue
listOfResultRowValueDecoder =
    Json.Decode.list resultRowValueDecoder


{-| Codec for ListOfSegmentDimensions.
-}
listOfSegmentDimensionsCodec : Codec ListOfSegmentDimensions
listOfSegmentDimensionsCodec =
    Codec.list segmentDimensionsCodec


{-| Codec for ListOfSegmentGroup.
-}
listOfSegmentGroupCodec : Codec ListOfSegmentGroup
listOfSegmentGroupCodec =
    Codec.list segmentGroupCodec


{-| Codec for ListOfSegmentReference.
-}
listOfSegmentReferenceCodec : Codec ListOfSegmentReference
listOfSegmentReferenceCodec =
    Codec.list segmentReferenceCodec


{-| Decoder for ListOfSegmentResponse.
-}
listOfSegmentResponseDecoder : Decoder ListOfSegmentResponse
listOfSegmentResponseDecoder =
    Json.Decode.list segmentResponseDecoder


{-| Decoder for ListOfTreatmentResource.
-}
listOfTreatmentResourceDecoder : Decoder ListOfTreatmentResource
listOfTreatmentResourceDecoder =
    Json.Decode.list treatmentResourceDecoder


{-| Encoder for ListOfWriteTreatmentResource.
-}
listOfWriteTreatmentResourceEncoder : ListOfWriteTreatmentResource -> Value
listOfWriteTreatmentResourceEncoder val =
    Json.Encode.list writeTreatmentResourceEncoder val


{-| Codec for ListOfString.
-}
listOfStringCodec : Codec ListOfString
listOfStringCodec =
    Codec.list Codec.string


{-| Encoder for MapOfAddressConfiguration.
-}
mapOfAddressConfigurationEncoder : MapOfAddressConfiguration -> Value
mapOfAddressConfigurationEncoder val =
    Json.Encode.dict identity addressConfigurationEncoder val


{-| Codec for MapOfAttributeDimension.
-}
mapOfAttributeDimensionCodec : Codec MapOfAttributeDimension
mapOfAttributeDimensionCodec =
    Codec.dict attributeDimensionCodec


{-| Decoder for MapOfChannelResponse.
-}
mapOfChannelResponseDecoder : Decoder MapOfChannelResponse
mapOfChannelResponseDecoder =
    Json.Decode.dict channelResponseDecoder


{-| Decoder for MapOfEndpointMessageResult.
-}
mapOfEndpointMessageResultDecoder : Decoder MapOfEndpointMessageResult
mapOfEndpointMessageResultDecoder =
    Json.Decode.dict endpointMessageResultDecoder


{-| Encoder for MapOfEndpointSendConfiguration.
-}
mapOfEndpointSendConfigurationEncoder : MapOfEndpointSendConfiguration -> Value
mapOfEndpointSendConfigurationEncoder val =
    Json.Encode.dict identity endpointSendConfigurationEncoder val


{-| Encoder for MapOfEvent.
-}
mapOfEventEncoder : MapOfEvent -> Value
mapOfEventEncoder val =
    Json.Encode.dict identity eventEncoder val


{-| Decoder for MapOfEventItemResponse.
-}
mapOfEventItemResponseDecoder : Decoder MapOfEventItemResponse
mapOfEventItemResponseDecoder =
    Json.Decode.dict eventItemResponseDecoder


{-| Encoder for MapOfEventsBatch.
-}
mapOfEventsBatchEncoder : MapOfEventsBatch -> Value
mapOfEventsBatchEncoder val =
    Json.Encode.dict identity eventsBatchEncoder val


{-| Decoder for MapOfItemResponse.
-}
mapOfItemResponseDecoder : Decoder MapOfItemResponse
mapOfItemResponseDecoder =
    Json.Decode.dict itemResponseDecoder


{-| Codec for MapOfListOfString.
-}
mapOfListOfStringCodec : Codec MapOfListOfString
mapOfListOfStringCodec =
    Codec.dict listOfStringCodec


{-| Decoder for MapOfMapOfEndpointMessageResult.
-}
mapOfMapOfEndpointMessageResultDecoder : Decoder MapOfMapOfEndpointMessageResult
mapOfMapOfEndpointMessageResultDecoder =
    Json.Decode.dict mapOfEndpointMessageResultDecoder


{-| Decoder for MapOfMessageResult.
-}
mapOfMessageResultDecoder : Decoder MapOfMessageResult
mapOfMessageResultDecoder =
    Json.Decode.dict messageResultDecoder


{-| Codec for MapOfMetricDimension.
-}
mapOfMetricDimensionCodec : Codec MapOfMetricDimension
mapOfMetricDimensionCodec =
    Codec.dict metricDimensionCodec


{-| Codec for MapOfDouble.
-}
mapOfDoubleCodec : Codec MapOfDouble
mapOfDoubleCodec =
    Codec.dict Codec.float


{-| Decoder for MapOfInteger.
-}
mapOfIntegerDecoder : Decoder MapOfInteger
mapOfIntegerDecoder =
    Json.Decode.dict Json.Decode.int


{-| Codec for MapOfString.
-}
mapOfStringCodec : Codec MapOfString
mapOfStringCodec =
    Codec.dict Codec.string


{-| Codec for Message.
-}
messageCodec : Codec Message
messageCodec =
    Codec.object Message
        |> Codec.optionalField "Action" .action actionCodec
        |> Codec.optionalField "Body" .body Codec.string
        |> Codec.optionalField "ImageIconUrl" .imageIconUrl Codec.string
        |> Codec.optionalField "ImageSmallIconUrl" .imageSmallIconUrl Codec.string
        |> Codec.optionalField "ImageUrl" .imageUrl Codec.string
        |> Codec.optionalField "JsonBody" .jsonBody Codec.string
        |> Codec.optionalField "MediaUrl" .mediaUrl Codec.string
        |> Codec.optionalField "RawContent" .rawContent Codec.string
        |> Codec.optionalField "SilentPush" .silentPush Codec.bool
        |> Codec.optionalField "TimeToLive" .timeToLive Codec.int
        |> Codec.optionalField "Title" .title Codec.string
        |> Codec.optionalField "Url" .url Codec.string
        |> Codec.buildObject


{-| Decoder for MessageBody.
-}
messageBodyDecoder : Decoder MessageBody
messageBodyDecoder =
    Json.Decode.succeed MessageBody
        |> Pipeline.optional "Message" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "RequestID" (Json.Decode.maybe Json.Decode.string) Nothing


{-| Codec for MessageConfiguration.
-}
messageConfigurationCodec : Codec MessageConfiguration
messageConfigurationCodec =
    Codec.object MessageConfiguration
        |> Codec.optionalField "ADMMessage" .admmessage messageCodec
        |> Codec.optionalField "APNSMessage" .apnsmessage messageCodec
        |> Codec.optionalField "BaiduMessage" .baiduMessage messageCodec
        |> Codec.optionalField "DefaultMessage" .defaultMessage messageCodec
        |> Codec.optionalField "EmailMessage" .emailMessage campaignEmailMessageCodec
        |> Codec.optionalField "GCMMessage" .gcmmessage messageCodec
        |> Codec.optionalField "SMSMessage" .smsmessage campaignSmsMessageCodec
        |> Codec.buildObject


{-| Encoder for MessageRequest.
-}
messageRequestEncoder : MessageRequest -> Value
messageRequestEncoder val =
    [ ( "Addresses", val.addresses ) |> EncodeOpt.optionalField mapOfAddressConfigurationEncoder
    , ( "Context", val.context ) |> EncodeOpt.optionalField (Codec.encoder mapOfStringCodec)
    , ( "Endpoints", val.endpoints ) |> EncodeOpt.optionalField mapOfEndpointSendConfigurationEncoder
    , ( "MessageConfiguration", val.messageConfiguration ) |> EncodeOpt.field directMessageConfigurationEncoder
    , ( "TraceId", val.traceId ) |> EncodeOpt.optionalField Json.Encode.string
    ]
        |> EncodeOpt.objectMaySkip


{-| Decoder for MessageResponse.
-}
messageResponseDecoder : Decoder MessageResponse
messageResponseDecoder =
    Json.Decode.succeed MessageResponse
        |> Pipeline.required "ApplicationId" Json.Decode.string
        |> Pipeline.optional "EndpointResult" (Json.Decode.maybe mapOfEndpointMessageResultDecoder) Nothing
        |> Pipeline.optional "RequestId" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "Result" (Json.Decode.maybe mapOfMessageResultDecoder) Nothing


{-| Decoder for MessageResult.
-}
messageResultDecoder : Decoder MessageResult
messageResultDecoder =
    Json.Decode.succeed MessageResult
        |> Pipeline.required "DeliveryStatus" deliveryStatusDecoder
        |> Pipeline.optional "MessageId" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.required "StatusCode" Json.Decode.int
        |> Pipeline.optional "StatusMessage" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "UpdatedToken" (Json.Decode.maybe Json.Decode.string) Nothing


{-| Codec for MessageType.
-}
messageTypeCodec : Codec MessageType
messageTypeCodec =
    Codec.build (Enum.encoder messageType) (Enum.decoder messageType)


{-| Codec for MetricDimension.
-}
metricDimensionCodec : Codec MetricDimension
metricDimensionCodec =
    Codec.object MetricDimension
        |> Codec.field "ComparisonOperator" .comparisonOperator Codec.string
        |> Codec.field "Value" .value Codec.float
        |> Codec.buildObject


{-| Codec for Mode.
-}
modeCodec : Codec Mode
modeCodec =
    Codec.build (Enum.encoder mode) (Enum.decoder mode)


{-| Encoder for NumberValidateRequest.
-}
numberValidateRequestEncoder : NumberValidateRequest -> Value
numberValidateRequestEncoder val =
    [ ( "IsoCountryCode", val.isoCountryCode ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "PhoneNumber", val.phoneNumber ) |> EncodeOpt.optionalField Json.Encode.string
    ]
        |> EncodeOpt.objectMaySkip


{-| Decoder for NumberValidateResponse.
-}
numberValidateResponseDecoder : Decoder NumberValidateResponse
numberValidateResponseDecoder =
    Json.Decode.succeed NumberValidateResponse
        |> Pipeline.optional "Carrier" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "City" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "CleansedPhoneNumberE164" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "CleansedPhoneNumberNational" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "Country" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "CountryCodeIso2" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "CountryCodeNumeric" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "County" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "OriginalCountryCodeIso2" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "OriginalPhoneNumber" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "PhoneType" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "PhoneTypeCode" (Json.Decode.maybe Json.Decode.int) Nothing
        |> Pipeline.optional "Timezone" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "ZipCode" (Json.Decode.maybe Json.Decode.string) Nothing


{-| Encoder for PublicEndpoint.
-}
publicEndpointEncoder : PublicEndpoint -> Value
publicEndpointEncoder val =
    [ ( "Address", val.address ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Attributes", val.attributes ) |> EncodeOpt.optionalField (Codec.encoder mapOfListOfStringCodec)
    , ( "ChannelType", val.channelType ) |> EncodeOpt.optionalField (Codec.encoder channelTypeCodec)
    , ( "Demographic", val.demographic ) |> EncodeOpt.optionalField (Codec.encoder endpointDemographicCodec)
    , ( "EffectiveDate", val.effectiveDate ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "EndpointStatus", val.endpointStatus ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Location", val.location ) |> EncodeOpt.optionalField (Codec.encoder endpointLocationCodec)
    , ( "Metrics", val.metrics ) |> EncodeOpt.optionalField (Codec.encoder mapOfDoubleCodec)
    , ( "OptOut", val.optOut ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "RequestId", val.requestId ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "User", val.user ) |> EncodeOpt.optionalField (Codec.encoder endpointUserCodec)
    ]
        |> EncodeOpt.objectMaySkip


{-| Codec for QuietTime.
-}
quietTimeCodec : Codec QuietTime
quietTimeCodec =
    Codec.object QuietTime
        |> Codec.optionalField "End" .end Codec.string
        |> Codec.optionalField "Start" .start Codec.string
        |> Codec.buildObject


{-| Encoder for RawEmail.
-}
rawEmailEncoder : RawEmail -> Value
rawEmailEncoder val =
    [ ( "Data", val.data ) |> EncodeOpt.optionalField Json.Encode.string ] |> EncodeOpt.objectMaySkip


{-| Codec for RecencyDimension.
-}
recencyDimensionCodec : Codec RecencyDimension
recencyDimensionCodec =
    Codec.object RecencyDimension
        |> Codec.field "Duration" .duration durationCodec
        |> Codec.field "RecencyType" .recencyType recencyTypeCodec
        |> Codec.buildObject


{-| Codec for RecencyType.
-}
recencyTypeCodec : Codec RecencyType
recencyTypeCodec =
    Codec.build (Enum.encoder recencyType) (Enum.decoder recencyType)


{-| Decoder for ResultRow.
-}
resultRowDecoder : Decoder ResultRow
resultRowDecoder =
    Json.Decode.succeed ResultRow
        |> Pipeline.required "GroupedBys" listOfResultRowValueDecoder
        |> Pipeline.required "Values" listOfResultRowValueDecoder


{-| Decoder for ResultRowValue.
-}
resultRowValueDecoder : Decoder ResultRowValue
resultRowValueDecoder =
    Json.Decode.succeed ResultRowValue
        |> Pipeline.required "Key" Json.Decode.string
        |> Pipeline.required "Type" Json.Decode.string
        |> Pipeline.required "Value" Json.Decode.string


{-| Encoder for SmschannelRequest.
-}
smschannelRequestEncoder : SmschannelRequest -> Value
smschannelRequestEncoder val =
    [ ( "Enabled", val.enabled ) |> EncodeOpt.optionalField Json.Encode.bool
    , ( "SenderId", val.senderId ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "ShortCode", val.shortCode ) |> EncodeOpt.optionalField Json.Encode.string
    ]
        |> EncodeOpt.objectMaySkip


{-| Decoder for SmschannelResponse.
-}
smschannelResponseDecoder : Decoder SmschannelResponse
smschannelResponseDecoder =
    Json.Decode.succeed SmschannelResponse
        |> Pipeline.optional "ApplicationId" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "CreationDate" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "Enabled" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "HasCredential" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "Id" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "IsArchived" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "LastModifiedBy" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "LastModifiedDate" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.required "Platform" Json.Decode.string
        |> Pipeline.optional "PromotionalMessagesPerSecond" (Json.Decode.maybe Json.Decode.int) Nothing
        |> Pipeline.optional "SenderId" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "ShortCode" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "TransactionalMessagesPerSecond" (Json.Decode.maybe Json.Decode.int) Nothing
        |> Pipeline.optional "Version" (Json.Decode.maybe Json.Decode.int) Nothing


{-| Encoder for Smsmessage.
-}
smsmessageEncoder : Smsmessage -> Value
smsmessageEncoder val =
    [ ( "Body", val.body ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Keyword", val.keyword ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "MessageType", val.messageType ) |> EncodeOpt.optionalField (Codec.encoder messageTypeCodec)
    , ( "OriginationNumber", val.originationNumber ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "SenderId", val.senderId ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Substitutions", val.substitutions ) |> EncodeOpt.optionalField (Codec.encoder mapOfListOfStringCodec)
    ]
        |> EncodeOpt.objectMaySkip


{-| Codec for Schedule.
-}
scheduleCodec : Codec Schedule
scheduleCodec =
    Codec.object Schedule
        |> Codec.optionalField "EndTime" .endTime Codec.string
        |> Codec.optionalField "EventFilter" .eventFilter campaignEventFilterCodec
        |> Codec.optionalField "Frequency" .frequency frequencyCodec
        |> Codec.optionalField "IsLocalTime" .isLocalTime Codec.bool
        |> Codec.optionalField "QuietTime" .quietTime quietTimeCodec
        |> Codec.field "StartTime" .startTime Codec.string
        |> Codec.optionalField "Timezone" .timezone Codec.string
        |> Codec.buildObject


{-| Codec for SegmentBehaviors.
-}
segmentBehaviorsCodec : Codec SegmentBehaviors
segmentBehaviorsCodec =
    Codec.object SegmentBehaviors |> Codec.optionalField "Recency" .recency recencyDimensionCodec |> Codec.buildObject


{-| Codec for SegmentDemographics.
-}
segmentDemographicsCodec : Codec SegmentDemographics
segmentDemographicsCodec =
    Codec.object SegmentDemographics
        |> Codec.optionalField "AppVersion" .appVersion setDimensionCodec
        |> Codec.optionalField "Channel" .channel setDimensionCodec
        |> Codec.optionalField "DeviceType" .deviceType setDimensionCodec
        |> Codec.optionalField "Make" .make setDimensionCodec
        |> Codec.optionalField "Model" .model setDimensionCodec
        |> Codec.optionalField "Platform" .platform setDimensionCodec
        |> Codec.buildObject


{-| Codec for SegmentDimensions.
-}
segmentDimensionsCodec : Codec SegmentDimensions
segmentDimensionsCodec =
    Codec.object SegmentDimensions
        |> Codec.optionalField "Attributes" .attributes mapOfAttributeDimensionCodec
        |> Codec.optionalField "Behavior" .behavior segmentBehaviorsCodec
        |> Codec.optionalField "Demographic" .demographic segmentDemographicsCodec
        |> Codec.optionalField "Location" .location segmentLocationCodec
        |> Codec.optionalField "Metrics" .metrics mapOfMetricDimensionCodec
        |> Codec.optionalField "UserAttributes" .userAttributes mapOfAttributeDimensionCodec
        |> Codec.buildObject


{-| Codec for SegmentGroup.
-}
segmentGroupCodec : Codec SegmentGroup
segmentGroupCodec =
    Codec.object SegmentGroup
        |> Codec.optionalField "Dimensions" .dimensions listOfSegmentDimensionsCodec
        |> Codec.optionalField "SourceSegments" .sourceSegments listOfSegmentReferenceCodec
        |> Codec.optionalField "SourceType" .sourceType sourceTypeCodec
        |> Codec.optionalField "Type" .type_ typeCodec
        |> Codec.buildObject


{-| Codec for SegmentGroupList.
-}
segmentGroupListCodec : Codec SegmentGroupList
segmentGroupListCodec =
    Codec.object SegmentGroupList
        |> Codec.optionalField "Groups" .groups listOfSegmentGroupCodec
        |> Codec.optionalField "Include" .include includeCodec
        |> Codec.buildObject


{-| Decoder for SegmentImportResource.
-}
segmentImportResourceDecoder : Decoder SegmentImportResource
segmentImportResourceDecoder =
    Json.Decode.succeed SegmentImportResource
        |> Pipeline.optional "ChannelCounts" (Json.Decode.maybe mapOfIntegerDecoder) Nothing
        |> Pipeline.required "ExternalId" Json.Decode.string
        |> Pipeline.required "Format" (Codec.decoder formatCodec)
        |> Pipeline.required "RoleArn" Json.Decode.string
        |> Pipeline.required "S3Url" Json.Decode.string
        |> Pipeline.required "Size" Json.Decode.int


{-| Codec for SegmentLocation.
-}
segmentLocationCodec : Codec SegmentLocation
segmentLocationCodec =
    Codec.object SegmentLocation
        |> Codec.optionalField "Country" .country setDimensionCodec
        |> Codec.optionalField "GPSPoint" .gpspoint gpspointDimensionCodec
        |> Codec.buildObject


{-| Codec for SegmentReference.
-}
segmentReferenceCodec : Codec SegmentReference
segmentReferenceCodec =
    Codec.object SegmentReference
        |> Codec.field "Id" .id Codec.string
        |> Codec.optionalField "Version" .version Codec.int
        |> Codec.buildObject


{-| Decoder for SegmentResponse.
-}
segmentResponseDecoder : Decoder SegmentResponse
segmentResponseDecoder =
    Json.Decode.succeed SegmentResponse
        |> Pipeline.required "ApplicationId" Json.Decode.string
        |> Pipeline.required "Arn" Json.Decode.string
        |> Pipeline.required "CreationDate" Json.Decode.string
        |> Pipeline.optional "Dimensions" (Json.Decode.maybe (Codec.decoder segmentDimensionsCodec)) Nothing
        |> Pipeline.required "Id" Json.Decode.string
        |> Pipeline.optional "ImportDefinition" (Json.Decode.maybe segmentImportResourceDecoder) Nothing
        |> Pipeline.optional "LastModifiedDate" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "Name" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "SegmentGroups" (Json.Decode.maybe (Codec.decoder segmentGroupListCodec)) Nothing
        |> Pipeline.required "SegmentType" segmentTypeDecoder
        |> Pipeline.optional "Version" (Json.Decode.maybe Json.Decode.int) Nothing
        |> Pipeline.optional "tags" (Json.Decode.maybe (Codec.decoder mapOfStringCodec)) Nothing


{-| Decoder for SegmentType.
-}
segmentTypeDecoder : Decoder SegmentType
segmentTypeDecoder =
    Enum.decoder segmentType


{-| Decoder for SegmentsResponse.
-}
segmentsResponseDecoder : Decoder SegmentsResponse
segmentsResponseDecoder =
    Json.Decode.succeed SegmentsResponse
        |> Pipeline.required "Item" listOfSegmentResponseDecoder
        |> Pipeline.optional "NextToken" (Json.Decode.maybe Json.Decode.string) Nothing


{-| Encoder for SendUsersMessageRequest.
-}
sendUsersMessageRequestEncoder : SendUsersMessageRequest -> Value
sendUsersMessageRequestEncoder val =
    [ ( "Context", val.context ) |> EncodeOpt.optionalField (Codec.encoder mapOfStringCodec)
    , ( "MessageConfiguration", val.messageConfiguration ) |> EncodeOpt.field directMessageConfigurationEncoder
    , ( "TraceId", val.traceId ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Users", val.users ) |> EncodeOpt.field mapOfEndpointSendConfigurationEncoder
    ]
        |> EncodeOpt.objectMaySkip


{-| Decoder for SendUsersMessageResponse.
-}
sendUsersMessageResponseDecoder : Decoder SendUsersMessageResponse
sendUsersMessageResponseDecoder =
    Json.Decode.succeed SendUsersMessageResponse
        |> Pipeline.required "ApplicationId" Json.Decode.string
        |> Pipeline.optional "RequestId" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "Result" (Json.Decode.maybe mapOfMapOfEndpointMessageResultDecoder) Nothing


{-| Encoder for Session.
-}
sessionEncoder : Session -> Value
sessionEncoder val =
    [ ( "Duration", val.duration ) |> EncodeOpt.optionalField Json.Encode.int
    , ( "Id", val.id ) |> EncodeOpt.field Json.Encode.string
    , ( "StartTimestamp", val.startTimestamp ) |> EncodeOpt.field Json.Encode.string
    , ( "StopTimestamp", val.stopTimestamp ) |> EncodeOpt.optionalField Json.Encode.string
    ]
        |> EncodeOpt.objectMaySkip


{-| Codec for SetDimension.
-}
setDimensionCodec : Codec SetDimension
setDimensionCodec =
    Codec.object SetDimension
        |> Codec.optionalField "DimensionType" .dimensionType dimensionTypeCodec
        |> Codec.field "Values" .values listOfStringCodec
        |> Codec.buildObject


{-| Encoder for SimpleEmail.
-}
simpleEmailEncoder : SimpleEmail -> Value
simpleEmailEncoder val =
    [ ( "HtmlPart", val.htmlPart ) |> EncodeOpt.optionalField simpleEmailPartEncoder
    , ( "Subject", val.subject ) |> EncodeOpt.optionalField simpleEmailPartEncoder
    , ( "TextPart", val.textPart ) |> EncodeOpt.optionalField simpleEmailPartEncoder
    ]
        |> EncodeOpt.objectMaySkip


{-| Encoder for SimpleEmailPart.
-}
simpleEmailPartEncoder : SimpleEmailPart -> Value
simpleEmailPartEncoder val =
    [ ( "Charset", val.charset ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Data", val.data ) |> EncodeOpt.optionalField Json.Encode.string
    ]
        |> EncodeOpt.objectMaySkip


{-| Codec for SourceType.
-}
sourceTypeCodec : Codec SourceType
sourceTypeCodec =
    Codec.build (Enum.encoder sourceType) (Enum.decoder sourceType)


{-| Codec for TagsModel.
-}
tagsModelCodec : Codec TagsModel
tagsModelCodec =
    Codec.object TagsModel |> Codec.field "tags" .tags mapOfStringCodec |> Codec.buildObject


{-| Decoder for TreatmentResource.
-}
treatmentResourceDecoder : Decoder TreatmentResource
treatmentResourceDecoder =
    Json.Decode.succeed TreatmentResource
        |> Pipeline.required "Id" Json.Decode.string
        |> Pipeline.optional
            "MessageConfiguration"
            (Json.Decode.maybe (Codec.decoder messageConfigurationCodec))
            Nothing
        |> Pipeline.optional "Schedule" (Json.Decode.maybe (Codec.decoder scheduleCodec)) Nothing
        |> Pipeline.required "SizePercent" Json.Decode.int
        |> Pipeline.optional "State" (Json.Decode.maybe campaignStateDecoder) Nothing
        |> Pipeline.optional "TreatmentDescription" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "TreatmentName" (Json.Decode.maybe Json.Decode.string) Nothing


{-| Codec for Type.
-}
typeCodec : Codec Type
typeCodec =
    Codec.build (Enum.encoder type_) (Enum.decoder type_)


{-| Encoder for UpdateAttributesRequest.
-}
updateAttributesRequestEncoder : UpdateAttributesRequest -> Value
updateAttributesRequestEncoder val =
    [ ( "Blacklist", val.blacklist ) |> EncodeOpt.optionalField (Codec.encoder listOfStringCodec) ]
        |> EncodeOpt.objectMaySkip


{-| Encoder for VoiceChannelRequest.
-}
voiceChannelRequestEncoder : VoiceChannelRequest -> Value
voiceChannelRequestEncoder val =
    [ ( "Enabled", val.enabled ) |> EncodeOpt.optionalField Json.Encode.bool ] |> EncodeOpt.objectMaySkip


{-| Decoder for VoiceChannelResponse.
-}
voiceChannelResponseDecoder : Decoder VoiceChannelResponse
voiceChannelResponseDecoder =
    Json.Decode.succeed VoiceChannelResponse
        |> Pipeline.optional "ApplicationId" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "CreationDate" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "Enabled" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "HasCredential" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "Id" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "IsArchived" (Json.Decode.maybe Json.Decode.bool) Nothing
        |> Pipeline.optional "LastModifiedBy" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.optional "LastModifiedDate" (Json.Decode.maybe Json.Decode.string) Nothing
        |> Pipeline.required "Platform" Json.Decode.string
        |> Pipeline.optional "Version" (Json.Decode.maybe Json.Decode.int) Nothing


{-| Encoder for VoiceMessage.
-}
voiceMessageEncoder : VoiceMessage -> Value
voiceMessageEncoder val =
    [ ( "Body", val.body ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "LanguageCode", val.languageCode ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "OriginationNumber", val.originationNumber ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Substitutions", val.substitutions ) |> EncodeOpt.optionalField (Codec.encoder mapOfListOfStringCodec)
    , ( "VoiceId", val.voiceId ) |> EncodeOpt.optionalField Json.Encode.string
    ]
        |> EncodeOpt.objectMaySkip


{-| Encoder for WriteApplicationSettingsRequest.
-}
writeApplicationSettingsRequestEncoder : WriteApplicationSettingsRequest -> Value
writeApplicationSettingsRequestEncoder val =
    [ ( "CampaignHook", val.campaignHook ) |> EncodeOpt.optionalField (Codec.encoder campaignHookCodec)
    , ( "CloudWatchMetricsEnabled", val.cloudWatchMetricsEnabled ) |> EncodeOpt.optionalField Json.Encode.bool
    , ( "Limits", val.limits ) |> EncodeOpt.optionalField (Codec.encoder campaignLimitsCodec)
    , ( "QuietTime", val.quietTime ) |> EncodeOpt.optionalField (Codec.encoder quietTimeCodec)
    ]
        |> EncodeOpt.objectMaySkip


{-| Encoder for WriteCampaignRequest.
-}
writeCampaignRequestEncoder : WriteCampaignRequest -> Value
writeCampaignRequestEncoder val =
    [ ( "AdditionalTreatments", val.additionalTreatments )
        |> EncodeOpt.optionalField listOfWriteTreatmentResourceEncoder
    , ( "Description", val.description ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "HoldoutPercent", val.holdoutPercent ) |> EncodeOpt.optionalField Json.Encode.int
    , ( "Hook", val.hook ) |> EncodeOpt.optionalField (Codec.encoder campaignHookCodec)
    , ( "IsPaused", val.isPaused ) |> EncodeOpt.optionalField Json.Encode.bool
    , ( "Limits", val.limits ) |> EncodeOpt.optionalField (Codec.encoder campaignLimitsCodec)
    , ( "MessageConfiguration", val.messageConfiguration )
        |> EncodeOpt.optionalField (Codec.encoder messageConfigurationCodec)
    , ( "Name", val.name ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "Schedule", val.schedule ) |> EncodeOpt.optionalField (Codec.encoder scheduleCodec)
    , ( "SegmentId", val.segmentId ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "SegmentVersion", val.segmentVersion ) |> EncodeOpt.optionalField Json.Encode.int
    , ( "TreatmentDescription", val.treatmentDescription ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "TreatmentName", val.treatmentName ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "tags", val.tags ) |> EncodeOpt.optionalField (Codec.encoder mapOfStringCodec)
    ]
        |> EncodeOpt.objectMaySkip


{-| Encoder for WriteEventStream.
-}
writeEventStreamEncoder : WriteEventStream -> Value
writeEventStreamEncoder val =
    [ ( "DestinationStreamArn", val.destinationStreamArn ) |> EncodeOpt.field Json.Encode.string
    , ( "RoleArn", val.roleArn ) |> EncodeOpt.field Json.Encode.string
    ]
        |> EncodeOpt.objectMaySkip


{-| Encoder for WriteSegmentRequest.
-}
writeSegmentRequestEncoder : WriteSegmentRequest -> Value
writeSegmentRequestEncoder val =
    [ ( "Dimensions", val.dimensions ) |> EncodeOpt.optionalField (Codec.encoder segmentDimensionsCodec)
    , ( "Name", val.name ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "SegmentGroups", val.segmentGroups ) |> EncodeOpt.optionalField (Codec.encoder segmentGroupListCodec)
    , ( "tags", val.tags ) |> EncodeOpt.optionalField (Codec.encoder mapOfStringCodec)
    ]
        |> EncodeOpt.objectMaySkip


{-| Encoder for WriteTreatmentResource.
-}
writeTreatmentResourceEncoder : WriteTreatmentResource -> Value
writeTreatmentResourceEncoder val =
    [ ( "MessageConfiguration", val.messageConfiguration )
        |> EncodeOpt.optionalField (Codec.encoder messageConfigurationCodec)
    , ( "Schedule", val.schedule ) |> EncodeOpt.optionalField (Codec.encoder scheduleCodec)
    , ( "SizePercent", val.sizePercent ) |> EncodeOpt.field Json.Encode.int
    , ( "TreatmentDescription", val.treatmentDescription ) |> EncodeOpt.optionalField Json.Encode.string
    , ( "TreatmentName", val.treatmentName ) |> EncodeOpt.optionalField Json.Encode.string
    ]
        |> EncodeOpt.objectMaySkip


{-| KVEncoder for ListOfString.
-}
listOfStringKVEncoder : ListOfString -> KVPairs
listOfStringKVEncoder val =
    AWS.KVEncode.list AWS.KVEncode.string val val
