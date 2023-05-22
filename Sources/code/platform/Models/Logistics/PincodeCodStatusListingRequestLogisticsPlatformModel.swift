

import Foundation

public extension PlatformClient.Logistics {
    /*
         Model: PincodeCodStatusListingRequest
         Used By: Logistics
     */

    class PincodeCodStatusListingRequest: Codable {
        public var country: String?

        public var isActive: Bool?

        public var pincode: Int?

        public var current: Int?

        public var pageSize: Int?

        public enum CodingKeys: String, CodingKey {
            case country

            case isActive = "is_active"

            case pincode

            case current

            case pageSize = "page_size"
        }

        public init(country: String? = nil, current: Int? = nil, isActive: Bool? = nil, pageSize: Int? = nil, pincode: Int? = nil) {
            self.country = country

            self.isActive = isActive

            self.pincode = pincode

            self.current = current

            self.pageSize = pageSize
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                country = try container.decode(String.self, forKey: .country)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pincode = try container.decode(Int.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                current = try container.decode(Int.self, forKey: .current)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pageSize = try container.decode(Int.self, forKey: .pageSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(pincode, forKey: .pincode)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)
        }
    }
}

public extension PlatformClient.ApplicationClient.Logistics {
    /*
         Model: PincodeCodStatusListingRequest
         Used By: Logistics
     */

    class PincodeCodStatusListingRequest: Codable {
        public var country: String?

        public var isActive: Bool?

        public var pincode: Int?

        public var current: Int?

        public var pageSize: Int?

        public enum CodingKeys: String, CodingKey {
            case country

            case isActive = "is_active"

            case pincode

            case current

            case pageSize = "page_size"
        }

        public init(country: String? = nil, current: Int? = nil, isActive: Bool? = nil, pageSize: Int? = nil, pincode: Int? = nil) {
            self.country = country

            self.isActive = isActive

            self.pincode = pincode

            self.current = current

            self.pageSize = pageSize
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                country = try container.decode(String.self, forKey: .country)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pincode = try container.decode(Int.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                current = try container.decode(Int.self, forKey: .current)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pageSize = try container.decode(Int.self, forKey: .pageSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encode(pincode, forKey: .pincode)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(pageSize, forKey: .pageSize)
        }
    }
}
