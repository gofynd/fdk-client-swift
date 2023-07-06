

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: EdcDeviceStatsResponse
         Used By: Payment
     */

    class EdcDeviceStatsResponse: Codable {
        public var success: Bool

        public var statistics: StatisticsData

        public enum CodingKeys: String, CodingKey {
            case success

            case statistics
        }

        public init(statistics: StatisticsData, success: Bool) {
            self.success = success

            self.statistics = statistics
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            statistics = try container.decode(StatisticsData.self, forKey: .statistics)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(statistics, forKey: .statistics)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: EdcDeviceStatsResponse
         Used By: Payment
     */

    class EdcDeviceStatsResponse: Codable {
        public var success: Bool

        public var statistics: StatisticsData

        public enum CodingKeys: String, CodingKey {
            case success

            case statistics
        }

        public init(statistics: StatisticsData, success: Bool) {
            self.success = success

            self.statistics = statistics
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            statistics = try container.decode(StatisticsData.self, forKey: .statistics)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(statistics, forKey: .statistics)
        }
    }
}
