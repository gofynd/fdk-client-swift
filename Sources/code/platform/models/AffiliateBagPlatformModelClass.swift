

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var amountPaid: Double

        public var quantity: Int

        public var modifiedOn: String

        public var discount: Double

        public var priceMarked: Double

        public var pdfLinks: MarketPlacePdf?

        public var priceEffective: Double

        public var sku: String

        public var itemId: Int

        public var affiliateStoreId: String

        public var avlQty: Int

        public var itemSize: String

        public var storeId: Int

        public var id: String

        public var affiliateMeta: [String: Any]

        public var companyId: Int

        public var deliveryCharge: Double

        public var transferPrice: Int

        public var sellerIdentifier: String

        public var fyndStoreId: String

        public var hsnCodeId: String

        public var unitPrice: Double

        public var identifier: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case quantity

            case modifiedOn = "modified_on"

            case discount

            case priceMarked = "price_marked"

            case pdfLinks = "pdf_links"

            case priceEffective = "price_effective"

            case sku

            case itemId = "item_id"

            case affiliateStoreId = "affiliate_store_id"

            case avlQty = "avl_qty"

            case itemSize = "item_size"

            case storeId = "store_id"

            case id = "_id"

            case affiliateMeta = "affiliate_meta"

            case companyId = "company_id"

            case deliveryCharge = "delivery_charge"

            case transferPrice = "transfer_price"

            case sellerIdentifier = "seller_identifier"

            case fyndStoreId = "fynd_store_id"

            case hsnCodeId = "hsn_code_id"

            case unitPrice = "unit_price"

            case identifier
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.amountPaid = amountPaid

            self.quantity = quantity

            self.modifiedOn = modifiedOn

            self.discount = discount

            self.priceMarked = priceMarked

            self.pdfLinks = pdfLinks

            self.priceEffective = priceEffective

            self.sku = sku

            self.itemId = itemId

            self.affiliateStoreId = affiliateStoreId

            self.avlQty = avlQty

            self.itemSize = itemSize

            self.storeId = storeId

            self.id = id

            self.affiliateMeta = affiliateMeta

            self.companyId = companyId

            self.deliveryCharge = deliveryCharge

            self.transferPrice = transferPrice

            self.sellerIdentifier = sellerIdentifier

            self.fyndStoreId = fyndStoreId

            self.hsnCodeId = hsnCodeId

            self.unitPrice = unitPrice

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            quantity = try container.decode(Int.self, forKey: .quantity)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            discount = try container.decode(Double.self, forKey: .discount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sku = try container.decode(String.self, forKey: .sku)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            storeId = try container.decode(Int.self, forKey: .storeId)

            id = try container.decode(String.self, forKey: .id)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            companyId = try container.decode(Int.self, forKey: .companyId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}
