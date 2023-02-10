

import Foundation
public extension PlatformClient {
    /*
         Model: EdcDetailsRequest
         Used By: Payment
     */

    class EdcDetailsRequest: Codable {
        public var terminalSerialNo: String

        public enum CodingKeys: String, CodingKey {
            case terminalSerialNo = "terminal_serial_no"
        }

        public init(terminalSerialNo: String) {
            self.terminalSerialNo = terminalSerialNo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            terminalSerialNo = try container.decode(String.self, forKey: .terminalSerialNo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(terminalSerialNo, forKey: .terminalSerialNo)
        }
    }
}
