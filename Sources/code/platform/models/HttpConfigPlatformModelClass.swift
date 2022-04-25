

import Foundation
public extension PlatformClient {
    /*
         Model: HttpConfig
         Used By: Inventory
     */

    class HttpConfig: Codable {
        public var hosturl: String?

        public var username: String?

        public var password: String?

        public var requestParams: [String: String]?

        public var httpMethod: String?

        public var requestPayload: String?

        public var localPath: String?

        public var archiveConfig: ArchiveConfig?

        public enum CodingKeys: String, CodingKey {
            case hosturl

            case username

            case password

            case requestParams = "request_params"

            case httpMethod = "http_method"

            case requestPayload = "request_payload"

            case localPath = "local_path"

            case archiveConfig = "archive_config"
        }

        public init(archiveConfig: ArchiveConfig? = nil, hosturl: String? = nil, httpMethod: String? = nil, localPath: String? = nil, password: String? = nil, requestParams: [String: String]? = nil, requestPayload: String? = nil, username: String? = nil) {
            self.hosturl = hosturl

            self.username = username

            self.password = password

            self.requestParams = requestParams

            self.httpMethod = httpMethod

            self.requestPayload = requestPayload

            self.localPath = localPath

            self.archiveConfig = archiveConfig
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                hosturl = try container.decode(String.self, forKey: .hosturl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                username = try container.decode(String.self, forKey: .username)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                password = try container.decode(String.self, forKey: .password)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                requestParams = try container.decode([String: String].self, forKey: .requestParams)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                httpMethod = try container.decode(String.self, forKey: .httpMethod)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                requestPayload = try container.decode(String.self, forKey: .requestPayload)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                localPath = try container.decode(String.self, forKey: .localPath)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                archiveConfig = try container.decode(ArchiveConfig.self, forKey: .archiveConfig)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hosturl, forKey: .hosturl)

            try? container.encodeIfPresent(username, forKey: .username)

            try? container.encodeIfPresent(password, forKey: .password)

            try? container.encodeIfPresent(requestParams, forKey: .requestParams)

            try? container.encodeIfPresent(httpMethod, forKey: .httpMethod)

            try? container.encodeIfPresent(requestPayload, forKey: .requestPayload)

            try? container.encodeIfPresent(localPath, forKey: .localPath)

            try? container.encodeIfPresent(archiveConfig, forKey: .archiveConfig)
        }
    }
}
