

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var pdfLinks: MarketPlacePdf?

        public var discount: Double

        public var sku: String

        public var unitPrice: Double

        public var priceMarked: Double

        public var storeId: Int

        public var companyId: Int

        public var quantity: Int

        public var affiliateMeta: [String: Any]

        public var sellerIdentifier: String

        public var itemId: Int

        public var transferPrice: Int

        public var id: String

        public var affiliateStoreId: String

        public var priceEffective: Double

        public var fyndStoreId: String

        public var identifier: [String: Any]

        public var avlQty: Int

        public var deliveryCharge: Double

        public var amountPaid: Double

        public var hsnCodeId: String

        public var itemSize: String

        public var modifiedOn: String

        public enum CodingKeys: String, CodingKey {
            case pdfLinks = "pdf_links"

            case discount

            case sku

            case unitPrice = "unit_price"

            case priceMarked = "price_marked"

            case storeId = "store_id"

            case companyId = "company_id"

            case quantity

            case affiliateMeta = "affiliate_meta"

            case sellerIdentifier = "seller_identifier"

            case itemId = "item_id"

            case transferPrice = "transfer_price"

            case id = "_id"

            case affiliateStoreId = "affiliate_store_id"

            case priceEffective = "price_effective"

            case fyndStoreId = "fynd_store_id"

            case identifier

            case avlQty = "avl_qty"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case hsnCodeId = "hsn_code_id"

            case itemSize = "item_size"

            case modifiedOn = "modified_on"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.pdfLinks = pdfLinks

            self.discount = discount

            self.sku = sku

            self.unitPrice = unitPrice

            self.priceMarked = priceMarked

            self.storeId = storeId

            self.companyId = companyId

            self.quantity = quantity

            self.affiliateMeta = affiliateMeta

            self.sellerIdentifier = sellerIdentifier

            self.itemId = itemId

            self.transferPrice = transferPrice

            self.id = id

            self.affiliateStoreId = affiliateStoreId

            self.priceEffective = priceEffective

            self.fyndStoreId = fyndStoreId

            self.identifier = identifier

            self.avlQty = avlQty

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.hsnCodeId = hsnCodeId

            self.itemSize = itemSize

            self.modifiedOn = modifiedOn
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            discount = try container.decode(Double.self, forKey: .discount)

            sku = try container.decode(String.self, forKey: .sku)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            storeId = try container.decode(Int.self, forKey: .storeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            id = try container.decode(String.self, forKey: .id)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)
        }
    }
}
