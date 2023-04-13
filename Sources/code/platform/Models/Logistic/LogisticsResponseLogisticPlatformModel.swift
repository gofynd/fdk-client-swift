

import Foundation

public extension PlatformClient.Logistic {
    /*
         Model: LogisticsResponse
         Used By: Logistic
     */

    class LogisticsResponse: Codable {
        public var override: Bool?

        public var dp: Dp?

        public enum CodingKeys: String, CodingKey {
            case override

            case dp
        }

        public init(dp: Dp? = nil, override: Bool? = nil) {
            self.override = override

            self.dp = dp
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                override = try container.decode(Bool.self, forKey: .override)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dp = try container.decode(Dp.self, forKey: .dp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(override, forKey: .override)

            try? container.encodeIfPresent(dp, forKey: .dp)
        }
    }
}

public extension PlatformClient.ApplicationClient.Logistic {
    /*
         Model: LogisticsResponse
         Used By: Logistic
     */

    class LogisticsResponse: Codable {
        public var override: Bool?

        public var dp: Dp?

        public enum CodingKeys: String, CodingKey {
            case override

            case dp
        }

        public init(dp: Dp? = nil, override: Bool? = nil) {
            self.override = override

            self.dp = dp
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                override = try container.decode(Bool.self, forKey: .override)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dp = try container.decode(Dp.self, forKey: .dp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(override, forKey: .override)

            try? container.encodeIfPresent(dp, forKey: .dp)
        }
    }
}
