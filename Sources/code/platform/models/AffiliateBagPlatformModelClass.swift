

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var pdfLinks: MarketPlacePdf?

        public var modifiedOn: String

        public var priceMarked: Double

        public var itemSize: String

        public var sku: String

        public var affiliateStoreId: String

        public var affiliateMeta: [String: Any]

        public var hsnCodeId: String

        public var priceEffective: Double

        public var amountPaid: Double

        public var discount: Double

        public var quantity: Int

        public var unitPrice: Double

        public var deliveryCharge: Double

        public var fyndStoreId: String

        public var companyId: Int

        public var id: String

        public var avlQty: Int

        public var storeId: Int

        public var itemId: Int

        public var transferPrice: Int

        public var sellerIdentifier: String

        public var identifier: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case pdfLinks = "pdf_links"

            case modifiedOn = "modified_on"

            case priceMarked = "price_marked"

            case itemSize = "item_size"

            case sku

            case affiliateStoreId = "affiliate_store_id"

            case affiliateMeta = "affiliate_meta"

            case hsnCodeId = "hsn_code_id"

            case priceEffective = "price_effective"

            case amountPaid = "amount_paid"

            case discount

            case quantity

            case unitPrice = "unit_price"

            case deliveryCharge = "delivery_charge"

            case fyndStoreId = "fynd_store_id"

            case companyId = "company_id"

            case id = "_id"

            case avlQty = "avl_qty"

            case storeId = "store_id"

            case itemId = "item_id"

            case transferPrice = "transfer_price"

            case sellerIdentifier = "seller_identifier"

            case identifier
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.pdfLinks = pdfLinks

            self.modifiedOn = modifiedOn

            self.priceMarked = priceMarked

            self.itemSize = itemSize

            self.sku = sku

            self.affiliateStoreId = affiliateStoreId

            self.affiliateMeta = affiliateMeta

            self.hsnCodeId = hsnCodeId

            self.priceEffective = priceEffective

            self.amountPaid = amountPaid

            self.discount = discount

            self.quantity = quantity

            self.unitPrice = unitPrice

            self.deliveryCharge = deliveryCharge

            self.fyndStoreId = fyndStoreId

            self.companyId = companyId

            self.id = id

            self.avlQty = avlQty

            self.storeId = storeId

            self.itemId = itemId

            self.transferPrice = transferPrice

            self.sellerIdentifier = sellerIdentifier

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            discount = try container.decode(Double.self, forKey: .discount)

            quantity = try container.decode(Int.self, forKey: .quantity)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            id = try container.decode(String.self, forKey: .id)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            storeId = try container.decode(Int.self, forKey: .storeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            identifier = try container.decode([String: Any].self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}
