

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: PincodeDataResponse
         Used By: Logistic
     */
    class PincodeDataResponse: Codable {
        public var name: String?

        public var meta: PincodeMetaResponse?

        public var subType: String?

        public var parents: [PincodeParentsResponse]?

        public var uid: String?

        public var displayName: String?

        public var error: PincodeErrorSchemaResponse

        public enum CodingKeys: String, CodingKey {
            case name

            case meta

            case subType = "sub_type"

            case parents

            case uid

            case displayName = "display_name"

            case error
        }

        public init(displayName: String? = nil, error: PincodeErrorSchemaResponse, meta: PincodeMetaResponse? = nil, name: String? = nil, parents: [PincodeParentsResponse]? = nil, subType: String? = nil, uid: String? = nil) {
            self.name = name

            self.meta = meta

            self.subType = subType

            self.parents = parents

            self.uid = uid

            self.displayName = displayName

            self.error = error
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

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
                subType = try container.decode(String.self, forKey: .subType)

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
                uid = try container.decode(String.self, forKey: .uid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            error = try container.decode(PincodeErrorSchemaResponse.self, forKey: .error)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(subType, forKey: .subType)

            try? container.encodeIfPresent(parents, forKey: .parents)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(error, forKey: .error)
        }
    }
}
