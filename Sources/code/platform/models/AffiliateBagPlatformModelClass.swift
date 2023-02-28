

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var pdfLinks: MarketPlacePdf?

        public var fyndStoreId: String

        public var sellerIdentifier: String

        public var itemSize: String

        public var quantity: Int

        public var sku: String

        public var affiliateStoreId: String

        public var modifiedOn: String

        public var id: String

        public var discount: Double

        public var storeId: Int

        public var deliveryCharge: Double

        public var companyId: Int

        public var identifier: [String: Any]

        public var priceEffective: Double

        public var hsnCodeId: String

        public var affiliateMeta: [String: Any]

        public var itemId: Int

        public var priceMarked: Double

        public var avlQty: Int

        public var transferPrice: Int

        public var unitPrice: Double

        public var amountPaid: Double

        public enum CodingKeys: String, CodingKey {
            case pdfLinks = "pdf_links"

            case fyndStoreId = "fynd_store_id"

            case sellerIdentifier = "seller_identifier"

            case itemSize = "item_size"

            case quantity

            case sku

            case affiliateStoreId = "affiliate_store_id"

            case modifiedOn = "modified_on"

            case id = "_id"

            case discount

            case storeId = "store_id"

            case deliveryCharge = "delivery_charge"

            case companyId = "company_id"

            case identifier

            case priceEffective = "price_effective"

            case hsnCodeId = "hsn_code_id"

            case affiliateMeta = "affiliate_meta"

            case itemId = "item_id"

            case priceMarked = "price_marked"

            case avlQty = "avl_qty"

            case transferPrice = "transfer_price"

            case unitPrice = "unit_price"

            case amountPaid = "amount_paid"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.pdfLinks = pdfLinks

            self.fyndStoreId = fyndStoreId

            self.sellerIdentifier = sellerIdentifier

            self.itemSize = itemSize

            self.quantity = quantity

            self.sku = sku

            self.affiliateStoreId = affiliateStoreId

            self.modifiedOn = modifiedOn

            self.id = id

            self.discount = discount

            self.storeId = storeId

            self.deliveryCharge = deliveryCharge

            self.companyId = companyId

            self.identifier = identifier

            self.priceEffective = priceEffective

            self.hsnCodeId = hsnCodeId

            self.affiliateMeta = affiliateMeta

            self.itemId = itemId

            self.priceMarked = priceMarked

            self.avlQty = avlQty

            self.transferPrice = transferPrice

            self.unitPrice = unitPrice

            self.amountPaid = amountPaid
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            id = try container.decode(String.self, forKey: .id)

            discount = try container.decode(Double.self, forKey: .discount)

            storeId = try container.decode(Int.self, forKey: .storeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            companyId = try container.decode(Int.self, forKey: .companyId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)
        }
    }
}
