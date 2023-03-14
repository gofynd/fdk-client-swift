

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: PincodeDataResponse
         Used By: Logistic
     */
    class PincodeDataResponse: Codable {
        public var parents: [PincodeParentsResponse]?

        public var metaCode: CountryMetaResponse?

        public var meta: PincodeMetaResponse?

        public var name: String?

        public var subType: String?

        public var uid: String?

        public var error: PincodeErrorSchemaResponse

        public var displayName: String?

        public enum CodingKeys: String, CodingKey {
            case parents

            case metaCode = "meta_code"

            case meta

            case name

            case subType = "sub_type"

            case uid

            case error

            case displayName = "display_name"
        }

        public init(displayName: String? = nil, error: PincodeErrorSchemaResponse, meta: PincodeMetaResponse? = nil, metaCode: CountryMetaResponse? = nil, name: String? = nil, parents: [PincodeParentsResponse]? = nil, subType: String? = nil, uid: String? = nil) {
            self.parents = parents

            self.metaCode = metaCode

            self.meta = meta

            self.name = name

            self.subType = subType

            self.uid = uid

            self.error = error

            self.displayName = displayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                parents = try container.decode([PincodeParentsResponse].self, forKey: .parents)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                metaCode = try container.decode(CountryMetaResponse.self, forKey: .metaCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode(PincodeMetaResponse.self, forKey: .meta)

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
                subType = try container.decode(String.self, forKey: .subType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            error = try container.decode(PincodeErrorSchemaResponse.self, forKey: .error)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(parents, forKey: .parents)

            try? container.encodeIfPresent(metaCode, forKey: .metaCode)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(subType, forKey: .subType)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }
}
