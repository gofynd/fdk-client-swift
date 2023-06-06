

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: CompanyDpAccountRequest
         Used By: Serviceability
     */

    class CompanyDpAccountRequest: Codable {
        public var identifier: String?

        public var data: [DP]

        public enum CodingKeys: String, CodingKey {
            case identifier

            case data
        }

        public init(data: [DP], identifier: String? = nil) {
            self.identifier = identifier

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                identifier = try container.decode(String.self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            data = try container.decode([DP].self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: CompanyDpAccountRequest
         Used By: Serviceability
     */

    class CompanyDpAccountRequest: Codable {
        public var identifier: String?

        public var data: [DP]

        public enum CodingKeys: String, CodingKey {
            case identifier

            case data
        }

        public init(data: [DP], identifier: String? = nil) {
            self.identifier = identifier

            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                identifier = try container.decode(String.self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            data = try container.decode([DP].self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
