

import Foundation
public extension PlatformClient {
    /*
         Model: App
         Used By: Configuration
     */

    class App: Codable {
        public var companyId: String?

        public var channelType: String?

        public var auth: ApplicationAuth?

        public var name: String?

        public var desc: String?

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case channelType = "channel_type"

            case auth

            case name

            case desc
        }

        public init(auth: ApplicationAuth? = nil, channelType: String? = nil, companyId: String? = nil, desc: String? = nil, name: String? = nil) {
            self.companyId = companyId

            self.channelType = channelType

            self.auth = auth

            self.name = name

            self.desc = desc
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                companyId = try container.decode(String.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                channelType = try container.decode(String.self, forKey: .channelType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                auth = try container.decode(ApplicationAuth.self, forKey: .auth)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                desc = try container.decode(String.self, forKey: .desc)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(channelType, forKey: .channelType)

            try? container.encodeIfPresent(auth, forKey: .auth)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(desc, forKey: .desc)
        }
    }
}
