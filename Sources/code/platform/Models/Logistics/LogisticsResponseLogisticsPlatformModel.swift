

import Foundation

public extension PlatformClient.Logistics {
    /*
         Model: LogisticsResponse
         Used By: Logistics
     */

    class LogisticsResponse: Codable {
        public var dp: Dp?

        public var override: Bool?

        public enum CodingKeys: String, CodingKey {
            case dp

            case override
        }

        public init(dp: Dp? = nil, override: Bool? = nil) {
            self.dp = dp

            self.override = override
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dp = try container.decode(Dp.self, forKey: .dp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                override = try container.decode(Bool.self, forKey: .override)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dp, forKey: .dp)

            try? container.encodeIfPresent(override, forKey: .override)
        }
    }
}

public extension PlatformClient.ApplicationClient.Logistics {
    /*
         Model: LogisticsResponse
         Used By: Logistics
     */

    class LogisticsResponse: Codable {
        public var dp: Dp?

        public var override: Bool?

        public enum CodingKeys: String, CodingKey {
            case dp

            case override
        }

        public init(dp: Dp? = nil, override: Bool? = nil) {
            self.dp = dp

            self.override = override
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                dp = try container.decode(Dp.self, forKey: .dp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                override = try container.decode(Bool.self, forKey: .override)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(dp, forKey: .dp)

            try? container.encodeIfPresent(override, forKey: .override)
        }
    }
}
