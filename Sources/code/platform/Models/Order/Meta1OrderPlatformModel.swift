

import Foundation

public extension PlatformClient.Order {
    /*
         Model: Meta1
         Used By: Order
     */

    class Meta1: Codable {
        public var kafkaEmissionStatus: Int?

        public var stateManagerUsed: String?

        public enum CodingKeys: String, CodingKey {
            case kafkaEmissionStatus = "kafka_emission_status"

            case stateManagerUsed = "state_manager_used"
        }

        public init(kafkaEmissionStatus: Int? = nil, stateManagerUsed: String? = nil) {
            self.kafkaEmissionStatus = kafkaEmissionStatus

            self.stateManagerUsed = stateManagerUsed
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                kafkaEmissionStatus = try container.decode(Int.self, forKey: .kafkaEmissionStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stateManagerUsed = try container.decode(String.self, forKey: .stateManagerUsed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(kafkaEmissionStatus, forKey: .kafkaEmissionStatus)

            try? container.encodeIfPresent(stateManagerUsed, forKey: .stateManagerUsed)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: Meta1
         Used By: Order
     */

    class Meta1: Codable {
        public var kafkaEmissionStatus: Int?

        public var stateManagerUsed: String?

        public enum CodingKeys: String, CodingKey {
            case kafkaEmissionStatus = "kafka_emission_status"

            case stateManagerUsed = "state_manager_used"
        }

        public init(kafkaEmissionStatus: Int? = nil, stateManagerUsed: String? = nil) {
            self.kafkaEmissionStatus = kafkaEmissionStatus

            self.stateManagerUsed = stateManagerUsed
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                kafkaEmissionStatus = try container.decode(Int.self, forKey: .kafkaEmissionStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                stateManagerUsed = try container.decode(String.self, forKey: .stateManagerUsed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(kafkaEmissionStatus, forKey: .kafkaEmissionStatus)

            try? container.encodeIfPresent(stateManagerUsed, forKey: .stateManagerUsed)
        }
    }
}
