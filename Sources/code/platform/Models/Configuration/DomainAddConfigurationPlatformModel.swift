

import Foundation

public extension PlatformClient.Configuration {
    /*
         Model: DomainAdd
         Used By: Configuration
     */

    class DomainAdd: Codable {
        public var name: String?

        public var id: String?

        public var verified: Bool?

        public var isPrimary: Bool?

        public var isShortlink: Bool?

        public var message: String?

        public var txtRecords: [String]?

        public enum CodingKeys: String, CodingKey {
            case name

            case id = "_id"

            case verified

            case isPrimary = "is_primary"

            case isShortlink = "is_shortlink"

            case message

            case txtRecords = "txt_records"
        }

        public init(isPrimary: Bool? = nil, isShortlink: Bool? = nil, message: String? = nil, name: String? = nil, txtRecords: [String]? = nil, verified: Bool? = nil, id: String? = nil) {
            self.name = name

            self.id = id

            self.verified = verified

            self.isPrimary = isPrimary

            self.isShortlink = isShortlink

            self.message = message

            self.txtRecords = txtRecords
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
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verified = try container.decode(Bool.self, forKey: .verified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isPrimary = try container.decode(Bool.self, forKey: .isPrimary)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isShortlink = try container.decode(Bool.self, forKey: .isShortlink)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                txtRecords = try container.decode([String].self, forKey: .txtRecords)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(verified, forKey: .verified)

            try? container.encodeIfPresent(isPrimary, forKey: .isPrimary)

            try? container.encodeIfPresent(isShortlink, forKey: .isShortlink)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(txtRecords, forKey: .txtRecords)
        }
    }
}

public extension PlatformClient.ApplicationClient.Configuration {
    /*
         Model: DomainAdd
         Used By: Configuration
     */

    class DomainAdd: Codable {
        public var name: String?

        public var id: String?

        public var verified: Bool?

        public var isPrimary: Bool?

        public var isShortlink: Bool?

        public var message: String?

        public var txtRecords: [String]?

        public enum CodingKeys: String, CodingKey {
            case name

            case id = "_id"

            case verified

            case isPrimary = "is_primary"

            case isShortlink = "is_shortlink"

            case message

            case txtRecords = "txt_records"
        }

        public init(isPrimary: Bool? = nil, isShortlink: Bool? = nil, message: String? = nil, name: String? = nil, txtRecords: [String]? = nil, verified: Bool? = nil, id: String? = nil) {
            self.name = name

            self.id = id

            self.verified = verified

            self.isPrimary = isPrimary

            self.isShortlink = isShortlink

            self.message = message

            self.txtRecords = txtRecords
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
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                verified = try container.decode(Bool.self, forKey: .verified)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isPrimary = try container.decode(Bool.self, forKey: .isPrimary)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isShortlink = try container.decode(Bool.self, forKey: .isShortlink)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                txtRecords = try container.decode([String].self, forKey: .txtRecords)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(verified, forKey: .verified)

            try? container.encodeIfPresent(isPrimary, forKey: .isPrimary)

            try? container.encodeIfPresent(isShortlink, forKey: .isShortlink)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(txtRecords, forKey: .txtRecords)
        }
    }
}
