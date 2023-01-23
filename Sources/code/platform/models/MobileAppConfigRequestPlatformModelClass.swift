

import Foundation
public extension PlatformClient {
    /*
         Model: MobileAppConfigRequest
         Used By: Configuration
     */

    class MobileAppConfigRequest: Codable {
        public var appName: String?

        public var landingImage: LandingImage?

        public var splashImage: SplashImage?

        public var isActive: Bool?

        public enum CodingKeys: String, CodingKey {
            case appName = "app_name"

            case landingImage = "landing_image"

            case splashImage = "splash_image"

            case isActive = "is_active"
        }

        public init(appName: String? = nil, isActive: Bool? = nil, landingImage: LandingImage? = nil, splashImage: SplashImage? = nil) {
            self.appName = appName

            self.landingImage = landingImage

            self.splashImage = splashImage

            self.isActive = isActive
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                appName = try container.decode(String.self, forKey: .appName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                landingImage = try container.decode(LandingImage.self, forKey: .landingImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                splashImage = try container.decode(SplashImage.self, forKey: .splashImage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(appName, forKey: .appName)

            try? container.encodeIfPresent(landingImage, forKey: .landingImage)

            try? container.encodeIfPresent(splashImage, forKey: .splashImage)

            try? container.encodeIfPresent(isActive, forKey: .isActive)
        }
    }
}
