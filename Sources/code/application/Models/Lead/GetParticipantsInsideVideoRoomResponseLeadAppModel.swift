

import Foundation
public extension ApplicationClient.Lead {
    /*
        Model: GetParticipantsInsideVideoRoomResponse
        Used By: Lead
    */
    class GetParticipantsInsideVideoRoomResponse: Codable {
        
        public var participants: [Participant]
        
        public var room: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case participants = "participants"
            
            case room = "room"
            
        }

        public init(participants: [Participant], room: [String: Any]? = nil) {
            
            self.participants = participants
            
            self.room = room
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            participants = try container.decode([Participant].self, forKey: .participants)
            
            
            
            
            do {
                room = try container.decode([String: Any].self, forKey: .room)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(participants, forKey: .participants)
            
            
            
            try? container.encodeIfPresent(room, forKey: .room)
            
            
        }
        
    }
}
