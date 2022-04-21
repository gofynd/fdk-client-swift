

import Foundation
public extension PlatformClient {
    /*
         Model: PayloadStructure
         Used By: Communication
     */

    class PayloadStructure: Codable {
        public var data: [[String: Any]]?

        public var email: PayloadEmailStructure?

        public var sms: PayloadSmsStructure?

        public var application: String?

        public enum CodingKeys: String, CodingKey {
            case data

            case email

            case sms

            case application
        }

        public init(application: String? = nil, data: [[String: Any]]? = nil, email: PayloadEmailStructure? = nil, sms: PayloadSmsStructure? = nil) {
            self.data = data

            self.email = email

            self.sms = sms

            self.application = application
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                data = try container.decode([[String: Any]].self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(PayloadEmailStructure.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sms = try container.decode(PayloadSmsStructure.self, forKey: .sms)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                application = try container.decode(String.self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(sms, forKey: .sms)

            try? container.encodeIfPresent(application, forKey: .application)
        }
    }
}
