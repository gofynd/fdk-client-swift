

import Foundation
public extension PlatformClient {
    /*
         Model: MobileAppConfiguration
         Used By: Configuration
     */

    class MobileAppConfiguration: Codable {
        public var isActive: Bool?

        public var id: String?

        public var appName: String?

        public var landingImage: LandingImage?

        public var splashImage: SplashImage?

        public var application: String?

        public var platformType: String?

        public var createdAt: String?

        public var updatedAt: String?

        public var v: Int?

        public var packageName: String?

        public enum CodingKeys: String, CodingKey {
            case isActive = "is_active"

            case id = "_id"

            case appName = "app_name"

            case landingImage = "landing_image"

            case splashImage = "splash_image"

            case application

            case platformType = "platform_type"

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case v = "__v"

            case packageName = "package_name"
        }

        public init(application: String? = nil, appName: String? = nil, createdAt: String? = nil, isActive: Bool? = nil, landingImage: LandingImage? = nil, packageName: String? = nil, platformType: String? = nil, splashImage: SplashImage? = nil, updatedAt: String? = nil, id: String? = nil, v: Int? = nil) {
            self.isActive = isActive

            self.id = id

            self.appName = appName

            self.landingImage = landingImage

            self.splashImage = splashImage

            self.application = application

            self.platformType = platformType

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.v = v

            self.packageName = packageName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(String.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
                application = try container.decode(String.self, forKey: .application)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                platformType = try container.decode(String.self, forKey: .platformType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                v = try container.decode(Int.self, forKey: .v)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                packageName = try container.decode(String.self, forKey: .packageName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(appName, forKey: .appName)

            try? container.encodeIfPresent(landingImage, forKey: .landingImage)

            try? container.encodeIfPresent(splashImage, forKey: .splashImage)

            try? container.encodeIfPresent(application, forKey: .application)

            try? container.encodeIfPresent(platformType, forKey: .platformType)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(v, forKey: .v)

            try? container.encodeIfPresent(packageName, forKey: .packageName)
        }
    }
}
