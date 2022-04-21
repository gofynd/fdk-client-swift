

import Foundation
public extension PlatformClient {
    /*
         Model: AddProxyResponse
         Used By: Partner
     */

    class AddProxyResponse: Codable {
        public var id: String?

        public var attachedPath: String?

        public var proxyUrl: String?

        public var companyId: String?

        public var applicationId: String?

        public var extensionId: String?

        public var createdAt: String?

        public var modifiedAt: String?

        public enum CodingKeys: String, CodingKey {
            case id = "_id"

            case attachedPath = "attached_path"

            case proxyUrl = "proxy_url"

            case companyId = "company_id"

            case applicationId = "application_id"

            case extensionId = "extension_id"

            case createdAt = "created_at"

            case modifiedAt = "modified_at"
        }

        public init(applicationId: String? = nil, attachedPath: String? = nil, companyId: String? = nil, createdAt: String? = nil, extensionId: String? = nil, modifiedAt: String? = nil, proxyUrl: String? = nil, id: String? = nil) {
            self.id = id

            self.attachedPath = attachedPath

            self.proxyUrl = proxyUrl

            self.companyId = companyId

            self.applicationId = applicationId

            self.extensionId = extensionId

            self.createdAt = createdAt

            self.modifiedAt = modifiedAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                attachedPath = try container.decode(String.self, forKey: .attachedPath)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                proxyUrl = try container.decode(String.self, forKey: .proxyUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(String.self, forKey: .companyId)

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
                extensionId = try container.decode(String.self, forKey: .extensionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedAt = try container.decode(String.self, forKey: .modifiedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(attachedPath, forKey: .attachedPath)

            try? container.encodeIfPresent(proxyUrl, forKey: .proxyUrl)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(extensionId, forKey: .extensionId)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(modifiedAt, forKey: .modifiedAt)
        }
    }
}
