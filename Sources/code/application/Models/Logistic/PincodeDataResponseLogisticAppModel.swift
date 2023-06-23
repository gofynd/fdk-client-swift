

import Foundation
public extension ApplicationClient.Logistic {
    /*
         Model: PincodeDataResponse
         Used By: Logistic
     */
    class PincodeDataResponse: Codable {
        public var error: PincodeErrorSchemaResponse

        public var uid: String?

        public var meta: PincodeMetaResponse?

        public var displayName: String?

        public var parents: [PincodeParentsResponse]?

        public var name: String?

        public var latLong: PincodeLatLongData?

        public var metaCode: CountryMetaResponse?

        public var subType: String?

        public enum CodingKeys: String, CodingKey {
            case error

            case uid

            case meta

            case displayName = "display_name"

            case parents

            case name

            case latLong = "lat_long"

            case metaCode = "meta_code"

            case subType = "sub_type"
        }

        public init(displayName: String? = nil, error: PincodeErrorSchemaResponse, latLong: PincodeLatLongData? = nil, meta: PincodeMetaResponse? = nil, metaCode: CountryMetaResponse? = nil, name: String? = nil, parents: [PincodeParentsResponse]? = nil, subType: String? = nil, uid: String? = nil) {
            self.error = error

            self.uid = uid

            self.meta = meta

            self.displayName = displayName

            self.parents = parents

            self.name = name

            self.latLong = latLong

            self.metaCode = metaCode

            self.subType = subType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            error = try container.decode(PincodeErrorSchemaResponse.self, forKey: .error)

            do {
                uid = try container.decode(String.self, forKey: .uid)

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
                displayName = try container.decode(String.self, forKey: .displayName)

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
                metaCode = try container.decode(CountryMetaResponse.self, forKey: .metaCode)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(error, forKey: .error)

            try? container.encodeIfPresent(uid, forKey: .uid)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(parents, forKey: .parents)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(latLong, forKey: .latLong)

            try? container.encodeIfPresent(metaCode, forKey: .metaCode)

            try? container.encodeIfPresent(subType, forKey: .subType)
        }
    }
}
