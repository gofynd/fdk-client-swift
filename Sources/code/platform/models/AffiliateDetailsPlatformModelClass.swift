

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateDetails
         Used By: Order
     */

    class AffiliateDetails: Codable {
        public var affiliateId: String?

        public var affiliateShipmentId: String

        public var pdfLinks: PDFLinks?

        public var affiliateMeta: AffiliateMeta

        public var affiliateOrderId: String

        public var affiliateBagId: String

        public var config: AffiliateConfig1

        public var affiliateStoreId: String

        public var companyAffiliateTag: String?

        public var adId: String?

        public var shipmentMeta: ShipmentMeta

        public enum CodingKeys: String, CodingKey {
            case affiliateId = "affiliate_id"

            case affiliateShipmentId = "affiliate_shipment_id"

            case pdfLinks = "pdf_links"

            case affiliateMeta = "affiliate_meta"

            case affiliateOrderId = "affiliate_order_id"

            case affiliateBagId = "affiliate_bag_id"

            case config

            case affiliateStoreId = "affiliate_store_id"

            case companyAffiliateTag = "company_affiliate_tag"

            case adId = "ad_id"

            case shipmentMeta = "shipment_meta"
        }

        public init(adId: String? = nil, affiliateBagId: String, affiliateId: String? = nil, affiliateMeta: AffiliateMeta, affiliateOrderId: String, affiliateShipmentId: String, affiliateStoreId: String, companyAffiliateTag: String? = nil, config: AffiliateConfig1, pdfLinks: PDFLinks? = nil, shipmentMeta: ShipmentMeta) {
            self.affiliateId = affiliateId

            self.affiliateShipmentId = affiliateShipmentId

            self.pdfLinks = pdfLinks

            self.affiliateMeta = affiliateMeta

            self.affiliateOrderId = affiliateOrderId

            self.affiliateBagId = affiliateBagId

            self.config = config

            self.affiliateStoreId = affiliateStoreId

            self.companyAffiliateTag = companyAffiliateTag

            self.adId = adId

            self.shipmentMeta = shipmentMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                affiliateId = try container.decode(String.self, forKey: .affiliateId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateShipmentId = try container.decode(String.self, forKey: .affiliateShipmentId)

            do {
                pdfLinks = try container.decode(PDFLinks.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateMeta = try container.decode(AffiliateMeta.self, forKey: .affiliateMeta)

            affiliateOrderId = try container.decode(String.self, forKey: .affiliateOrderId)

            affiliateBagId = try container.decode(String.self, forKey: .affiliateBagId)

            config = try container.decode(AffiliateConfig1.self, forKey: .config)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            do {
                companyAffiliateTag = try container.decode(String.self, forKey: .companyAffiliateTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                adId = try container.decode(String.self, forKey: .adId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            shipmentMeta = try container.decode(ShipmentMeta.self, forKey: .shipmentMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateId, forKey: .affiliateId)

            try? container.encodeIfPresent(affiliateShipmentId, forKey: .affiliateShipmentId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(affiliateOrderId, forKey: .affiliateOrderId)

            try? container.encodeIfPresent(affiliateBagId, forKey: .affiliateBagId)

            try? container.encodeIfPresent(config, forKey: .config)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(companyAffiliateTag, forKey: .companyAffiliateTag)

            try? container.encodeIfPresent(adId, forKey: .adId)

            try? container.encodeIfPresent(shipmentMeta, forKey: .shipmentMeta)
        }
    }
}
