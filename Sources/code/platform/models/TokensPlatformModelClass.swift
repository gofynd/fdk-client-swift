

import Foundation
public extension PlatformClient {
    /*
         Model: Tokens
         Used By: Configuration
     */

    class Tokens: Codable {
        public var firebase: Firebase?

        public var moengage: Moengage?

        public var segment: Segment?

        public var gtm: Gtm?

        public var freshchat: Freshchat?

        public var safetynet: Safetynet?

        public var fyndRewards: FyndRewards?

        public var googleMap: GoogleMap?

        public enum CodingKeys: String, CodingKey {
            case firebase

            case moengage

            case segment

            case gtm

            case freshchat

            case safetynet

            case fyndRewards = "fynd_rewards"

            case googleMap = "google_map"
        }

        public init(firebase: Firebase? = nil, freshchat: Freshchat? = nil, fyndRewards: FyndRewards? = nil, googleMap: GoogleMap? = nil, gtm: Gtm? = nil, moengage: Moengage? = nil, safetynet: Safetynet? = nil, segment: Segment? = nil) {
            self.firebase = firebase

            self.moengage = moengage

            self.segment = segment

            self.gtm = gtm

            self.freshchat = freshchat

            self.safetynet = safetynet

            self.fyndRewards = fyndRewards

            self.googleMap = googleMap
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                firebase = try container.decode(Firebase.self, forKey: .firebase)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                moengage = try container.decode(Moengage.self, forKey: .moengage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                segment = try container.decode(Segment.self, forKey: .segment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gtm = try container.decode(Gtm.self, forKey: .gtm)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                freshchat = try container.decode(Freshchat.self, forKey: .freshchat)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                safetynet = try container.decode(Safetynet.self, forKey: .safetynet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fyndRewards = try container.decode(FyndRewards.self, forKey: .fyndRewards)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                googleMap = try container.decode(GoogleMap.self, forKey: .googleMap)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(firebase, forKey: .firebase)

            try? container.encodeIfPresent(moengage, forKey: .moengage)

            try? container.encodeIfPresent(segment, forKey: .segment)

            try? container.encodeIfPresent(gtm, forKey: .gtm)

            try? container.encodeIfPresent(freshchat, forKey: .freshchat)

            try? container.encodeIfPresent(safetynet, forKey: .safetynet)

            try? container.encodeIfPresent(fyndRewards, forKey: .fyndRewards)

            try? container.encodeIfPresent(googleMap, forKey: .googleMap)
        }
    }
}
