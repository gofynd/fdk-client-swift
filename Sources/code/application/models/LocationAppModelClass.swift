

import Foundation
public extension ApplicationClient {
    /*
         Model: Location
         Used By: Feedback
     */
    class Location: Codable {
        public var countryCode: String?

        public var flagUrl: String?

        public var geoLoc: GeoLoc?

        public var name: String?

        public var pincode: String?

        public enum CodingKeys: String, CodingKey {
            case countryCode = "country_code"

            case flagUrl = "flag_url"

            case geoLoc = "geo_loc"

            case name

            case pincode
        }

        public init(countryCode: String? = nil, flagUrl: String? = nil, geoLoc: GeoLoc? = nil, name: String? = nil, pincode: String? = nil) {
            self.countryCode = countryCode

            self.flagUrl = flagUrl

            self.geoLoc = geoLoc

            self.name = name

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                flagUrl = try container.decode(String.self, forKey: .flagUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                geoLoc = try container.decode(GeoLoc.self, forKey: .geoLoc)

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
                pincode = try container.decode(String.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(flagUrl, forKey: .flagUrl)

            try? container.encodeIfPresent(geoLoc, forKey: .geoLoc)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}
