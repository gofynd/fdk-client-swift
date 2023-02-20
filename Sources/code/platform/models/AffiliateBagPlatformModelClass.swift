

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var discount: Double

        public var itemId: Int

        public var unitPrice: Double

        public var storeId: Int

        public var amountPaid: Double

        public var modifiedOn: String

        public var hsnCodeId: String

        public var avlQty: Int

        public var affiliateMeta: [String: Any]

        public var priceMarked: Double

        public var fyndStoreId: String

        public var priceEffective: Double

        public var id: String

        public var sku: String

        public var pdfLinks: MarketPlacePdf?

        public var deliveryCharge: Double

        public var quantity: Int

        public var sellerIdentifier: String

        public var itemSize: String

        public var affiliateStoreId: String

        public var companyId: Int

        public var transferPrice: Int

        public var identifier: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case discount

            case itemId = "item_id"

            case unitPrice = "unit_price"

            case storeId = "store_id"

            case amountPaid = "amount_paid"

            case modifiedOn = "modified_on"

            case hsnCodeId = "hsn_code_id"

            case avlQty = "avl_qty"

            case affiliateMeta = "affiliate_meta"

            case priceMarked = "price_marked"

            case fyndStoreId = "fynd_store_id"

            case priceEffective = "price_effective"

            case id = "_id"

            case sku

            case pdfLinks = "pdf_links"

            case deliveryCharge = "delivery_charge"

            case quantity

            case sellerIdentifier = "seller_identifier"

            case itemSize = "item_size"

            case affiliateStoreId = "affiliate_store_id"

            case companyId = "company_id"

            case transferPrice = "transfer_price"

            case identifier
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.discount = discount

            self.itemId = itemId

            self.unitPrice = unitPrice

            self.storeId = storeId

            self.amountPaid = amountPaid

            self.modifiedOn = modifiedOn

            self.hsnCodeId = hsnCodeId

            self.avlQty = avlQty

            self.affiliateMeta = affiliateMeta

            self.priceMarked = priceMarked

            self.fyndStoreId = fyndStoreId

            self.priceEffective = priceEffective

            self.id = id

            self.sku = sku

            self.pdfLinks = pdfLinks

            self.deliveryCharge = deliveryCharge

            self.quantity = quantity

            self.sellerIdentifier = sellerIdentifier

            self.itemSize = itemSize

            self.affiliateStoreId = affiliateStoreId

            self.companyId = companyId

            self.transferPrice = transferPrice

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            discount = try container.decode(Double.self, forKey: .discount)

            itemId = try container.decode(Int.self, forKey: .itemId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            id = try container.decode(String.self, forKey: .id)

            sku = try container.decode(String.self, forKey: .sku)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}
