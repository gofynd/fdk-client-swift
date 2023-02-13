

import Foundation
public extension ApplicationClient {
    /*
         Model: PincodeDataResponse
         Used By: Logistic
     */
    class PincodeDataResponse: Codable {
        public var meta: PincodeMetaResponse?

        public var parents: [PincodeParentsResponse]?

        public var error: PincodeErrorSchemaResponse

        public var uid: String?

        public var subType: String?

        public var name: String?

        public var latLong: PincodeLatLongData?

        public var displayName: String?

        public enum CodingKeys: String, CodingKey {
            case meta

            case parents

            case error

            case uid

            case subType = "sub_type"

            case name

            case latLong = "lat_long"

            case displayName = "display_name"
        }

        public init(displayName: String? = nil, error: PincodeErrorSchemaResponse, latLong: PincodeLatLongData? = nil, meta: PincodeMetaResponse? = nil, name: String? = nil, parents: [PincodeParentsResponse]? = nil, subType: String? = nil, uid: String? = nil) {
            self.meta = meta

            self.parents = parents

            self.error = error

            self.uid = uid

            self.subType = subType

            self.name = name

            self.latLong = latLong

            self.displayName = displayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                meta = try container.decode(PincodeMetaResponse.self, forKey: .meta)

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

            error = try container.decode(PincodeErrorSchemaResponse.self, forKey: .error)

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

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                latLong = try container.decode(PincodeLatLongData.self, forKey: .latLong)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(parents, forKey: .parents)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(subType, forKey: .subType)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(latLong, forKey: .latLong)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }
}
