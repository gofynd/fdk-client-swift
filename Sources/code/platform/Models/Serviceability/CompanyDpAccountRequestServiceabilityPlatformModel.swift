

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: CompanyDpAccountRequest
         Used By: Serviceability
     */

    class CompanyDpAccountRequest: Codable {
        public var data: [DP]

        public var identifier: String?

        public enum CodingKeys: String, CodingKey {
            case data

            case identifier
        }

        public init(data: [DP], identifier: String? = nil) {
            self.data = data

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode([DP].self, forKey: .data)

            do {
                identifier = try container.decode(String.self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}

public extension PlatformClient.ApplicationClient.Serviceability {
    /*
         Model: CompanyDpAccountRequest
         Used By: Serviceability
     */

    class CompanyDpAccountRequest: Codable {
        public var data: [DP]

        public var identifier: String?

        public enum CodingKeys: String, CodingKey {
            case data

            case identifier
        }

        public init(data: [DP], identifier: String? = nil) {
            self.data = data

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode([DP].self, forKey: .data)

            do {
                identifier = try container.decode(String.self, forKey: .identifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}
