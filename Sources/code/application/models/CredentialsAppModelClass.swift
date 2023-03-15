

import Foundation
public extension ApplicationClient {
    /*
         Model: Credentials
         Used By: Configuration
     */
    class Credentials: Codable {
        public var ios: Ios?

        public var android: Android?

        public var projectId: String?

        public var gcmSenderId: String?

        public var applicationId: String?

        public var apiKey: String?

        public enum CodingKeys: String, CodingKey {
            case ios

            case android

            case projectId = "project_id"

            case gcmSenderId = "gcm_sender_id"

            case applicationId = "application_id"

            case apiKey = "api_key"
        }

        public init(android: Android? = nil, apiKey: String? = nil, applicationId: String? = nil, gcmSenderId: String? = nil, ios: Ios? = nil, projectId: String? = nil) {
            self.ios = ios

            self.android = android

            self.projectId = projectId

            self.gcmSenderId = gcmSenderId

            self.applicationId = applicationId

            self.apiKey = apiKey
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                ios = try container.decode(Ios.self, forKey: .ios)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                android = try container.decode(Android.self, forKey: .android)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                projectId = try container.decode(String.self, forKey: .projectId)

                if let strong_projectId = projectId,
                   let projectIdData = Data(base64Encoded: strong_projectId)
                {
                    projectId = String(data: projectIdData, encoding: .utf8) ?? projectId
                }

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gcmSenderId = try container.decode(String.self, forKey: .gcmSenderId)

                if let strong_gcmSenderId = gcmSenderId,
                   let gcmSenderIdData = Data(base64Encoded: strong_gcmSenderId)
                {
                    gcmSenderId = String(data: gcmSenderIdData, encoding: .utf8) ?? gcmSenderId
                }

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                applicationId = try container.decode(String.self, forKey: .applicationId)

                if let strong_applicationId = applicationId,
                   let applicationIdData = Data(base64Encoded: strong_applicationId)
                {
                    applicationId = String(data: applicationIdData, encoding: .utf8) ?? applicationId
                }

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                apiKey = try container.decode(String.self, forKey: .apiKey)

                if let strong_apiKey = apiKey,
                   let apiKeyData = Data(base64Encoded: strong_apiKey)
                {
                    apiKey = String(data: apiKeyData, encoding: .utf8) ?? apiKey
                }

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ios, forKey: .ios)

            try? container.encodeIfPresent(android, forKey: .android)

            try? container.encodeIfPresent(projectId?.asBase64, forKey: .projectId)

            try? container.encodeIfPresent(gcmSenderId?.asBase64, forKey: .gcmSenderId)

            try? container.encodeIfPresent(applicationId?.asBase64, forKey: .applicationId)

            try? container.encodeIfPresent(apiKey?.asBase64, forKey: .apiKey)
        }
    }
}
