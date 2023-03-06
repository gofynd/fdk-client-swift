

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: PincodeDataResponse
         Used By: Logistic
     */
    class PincodeDataResponse: Codable {
        public var displayName: String?

        public var metaCode: CountryMetaResponse?

        public var uid: String?

        public var subType: String?

        public var error: PincodeErrorSchemaResponse

        public var name: String?

        public var parents: [PincodeParentsResponse]?

        public var meta: PincodeMetaResponse?

        public enum CodingKeys: String, CodingKey {
            case displayName = "display_name"

            case metaCode = "meta_code"

            case uid

            case subType = "sub_type"

            case error

            case name

            case parents

            case meta
        }

        public init(displayName: String? = nil, error: PincodeErrorSchemaResponse, meta: PincodeMetaResponse? = nil, metaCode: CountryMetaResponse? = nil, name: String? = nil, parents: [PincodeParentsResponse]? = nil, subType: String? = nil, uid: String? = nil) {
            self.displayName = displayName

            self.metaCode = metaCode

            self.uid = uid

            self.subType = subType

            self.error = error

            self.name = name

            self.parents = parents

            self.meta = meta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

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
                uid = try container.decode(String.self, forKey: .uid)

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

            error = try container.decode(PincodeErrorSchemaResponse.self, forKey: .error)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                parents = try container.decode([PincodeParentsResponse].self, forKey: .parents)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(metaCode, forKey: .metaCode)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(subType, forKey: .subType)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(parents, forKey: .parents)

            try? container.encodeIfPresent(meta, forKey: .meta)
        }
    }
}
