

import Foundation
public extension ApplicationClient {
    /*
         Model: GetParticipantsInsideVideoRoomResponse
         Used By: Lead
     */
    class GetParticipantsInsideVideoRoomResponse: Codable {
        public var participants: [Participant]

        public enum CodingKeys: String, CodingKey {
            case participants
        }

        public init(participants: [Participant]) {
            self.participants = participants
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            participants = try container.decode([Participant].self, forKey: .participants)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(participants, forKey: .participants)
        }
    }
}
