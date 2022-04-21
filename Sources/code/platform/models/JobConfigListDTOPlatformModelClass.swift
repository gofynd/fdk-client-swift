

import Foundation
public extension PlatformClient {
    /*
         Model: JobConfigListDTO
         Used By: Inventory
     */

    class JobConfigListDTO: Codable {
        public var code: String?

        public var alias: String?

        public var modifiedBy: String?

        public var createdBy: String?

        public var modifiedOn: String?

        public var createdOn: String?

        public var active: Bool?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case code

            case alias

            case modifiedBy = "modified_by"

            case createdBy = "created_by"

            case modifiedOn = "modified_on"

            case createdOn = "created_on"

            case active

            case type
        }

        public init(active: Bool? = nil, alias: String? = nil, code: String? = nil, createdBy: String? = nil, createdOn: String? = nil, modifiedBy: String? = nil, modifiedOn: String? = nil, type: String? = nil) {
            self.code = code

            self.alias = alias

            self.modifiedBy = modifiedBy

            self.createdBy = createdBy

            self.modifiedOn = modifiedOn

            self.createdOn = createdOn

            self.active = active

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                alias = try container.decode(String.self, forKey: .alias)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedBy = try container.decode(String.self, forKey: .modifiedBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdBy = try container.decode(String.self, forKey: .createdBy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdOn = try container.decode(String.self, forKey: .createdOn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                active = try container.decode(Bool.self, forKey: .active)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(alias, forKey: .alias)

            try? container.encodeIfPresent(modifiedBy, forKey: .modifiedBy)

            try? container.encodeIfPresent(createdBy, forKey: .createdBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
