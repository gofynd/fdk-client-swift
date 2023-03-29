

import Foundation
public extension PlatformClient {
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

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gcmSenderId = try container.decode(String.self, forKey: .gcmSenderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                applicationId = try container.decode(String.self, forKey: .applicationId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                apiKey = try container.decode(String.self, forKey: .apiKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ios, forKey: .ios)

            try? container.encodeIfPresent(android, forKey: .android)

            try? container.encodeIfPresent(projectId, forKey: .projectId)

            try? container.encodeIfPresent(gcmSenderId, forKey: .gcmSenderId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(apiKey, forKey: .apiKey)
        }
    }
}
