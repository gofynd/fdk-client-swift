

import Foundation
public extension PlatformClient {
    /*
         Model: ConfigurationSchema
         Used By: Content
     */

    class ConfigurationSchema: Codable {
        public var sleepTime: Int?

        public var startOnLaunch: Bool?

        public var duration: Int?

        public var slideDirection: String?

        public enum CodingKeys: String, CodingKey {
            case sleepTime = "sleep_time"

            case startOnLaunch = "start_on_launch"

            case duration

            case slideDirection = "slide_direction"
        }

        public init(duration: Int? = nil, sleepTime: Int? = nil, slideDirection: String? = nil, startOnLaunch: Bool? = nil) {
            self.sleepTime = sleepTime

            self.startOnLaunch = startOnLaunch

            self.duration = duration

            self.slideDirection = slideDirection
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                sleepTime = try container.decode(Int.self, forKey: .sleepTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                startOnLaunch = try container.decode(Bool.self, forKey: .startOnLaunch)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                duration = try container.decode(Int.self, forKey: .duration)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slideDirection = try container.decode(String.self, forKey: .slideDirection)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sleepTime, forKey: .sleepTime)

            try? container.encodeIfPresent(startOnLaunch, forKey: .startOnLaunch)

            try? container.encodeIfPresent(duration, forKey: .duration)

            try? container.encodeIfPresent(slideDirection, forKey: .slideDirection)
        }
    }
}
