

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var quantity: Int

        public var priceEffective: Double

        public var hsnCodeId: String

        public var sku: String

        public var sellerIdentifier: String

        public var storeId: Int

        public var transferPrice: Int

        public var id: String

        public var discount: Double

        public var modifiedOn: String

        public var companyId: Int

        public var itemSize: String

        public var deliveryCharge: Double

        public var priceMarked: Double

        public var avlQty: Int

        public var affiliateMeta: [String: Any]

        public var itemId: Int

        public var fyndStoreId: String

        public var unitPrice: Double

        public var pdfLinks: MarketPlacePdf?

        public var identifier: [String: Any]

        public var affiliateStoreId: String

        public var amountPaid: Double

        public enum CodingKeys: String, CodingKey {
            case quantity

            case priceEffective = "price_effective"

            case hsnCodeId = "hsn_code_id"

            case sku

            case sellerIdentifier = "seller_identifier"

            case storeId = "store_id"

            case transferPrice = "transfer_price"

            case id = "_id"

            case discount

            case modifiedOn = "modified_on"

            case companyId = "company_id"

            case itemSize = "item_size"

            case deliveryCharge = "delivery_charge"

            case priceMarked = "price_marked"

            case avlQty = "avl_qty"

            case affiliateMeta = "affiliate_meta"

            case itemId = "item_id"

            case fyndStoreId = "fynd_store_id"

            case unitPrice = "unit_price"

            case pdfLinks = "pdf_links"

            case identifier

            case affiliateStoreId = "affiliate_store_id"

            case amountPaid = "amount_paid"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.quantity = quantity

            self.priceEffective = priceEffective

            self.hsnCodeId = hsnCodeId

            self.sku = sku

            self.sellerIdentifier = sellerIdentifier

            self.storeId = storeId

            self.transferPrice = transferPrice

            self.id = id

            self.discount = discount

            self.modifiedOn = modifiedOn

            self.companyId = companyId

            self.itemSize = itemSize

            self.deliveryCharge = deliveryCharge

            self.priceMarked = priceMarked

            self.avlQty = avlQty

            self.affiliateMeta = affiliateMeta

            self.itemId = itemId

            self.fyndStoreId = fyndStoreId

            self.unitPrice = unitPrice

            self.pdfLinks = pdfLinks

            self.identifier = identifier

            self.affiliateStoreId = affiliateStoreId

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sku = try container.decode(String.self, forKey: .sku)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            id = try container.decode(String.self, forKey: .id)

            discount = try container.decode(Double.self, forKey: .discount)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            companyId = try container.decode(Int.self, forKey: .companyId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}
