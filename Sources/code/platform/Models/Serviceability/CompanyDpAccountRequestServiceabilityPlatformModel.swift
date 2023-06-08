

import Foundation

public extension PlatformClient.Serviceability {
    /*
         Model: CompanyDpAccountRequest
         Used By: Serviceability
     */

    class CompanyDpAccountRequest: Codable {
        public var data: [DP]

        public enum CodingKeys: String, CodingKey {
            case data
        }

        public init(data: [DP]) {
            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode([DP].self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

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
        public var data: [DP]

        public enum CodingKeys: String, CodingKey {
            case data
        }

        public init(data: [DP]) {
            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode([DP].self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
