

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var storeId: Int

        public var sellerIdentifier: String

        public var priceEffective: Double

        public var discount: Double

        public var priceMarked: Double

        public var hsnCodeId: String

        public var amountPaid: Double

        public var itemId: Int

        public var avlQty: Int

        public var pdfLinks: MarketPlacePdf?

        public var itemSize: String

        public var transferPrice: Int

        public var modifiedOn: String

        public var deliveryCharge: Double

        public var fyndStoreId: String

        public var sku: String

        public var companyId: Int

        public var identifier: [String: Any]

        public var affiliateStoreId: String

        public var unitPrice: Double

        public var id: String

        public var affiliateMeta: [String: Any]

        public var quantity: Int

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case sellerIdentifier = "seller_identifier"

            case priceEffective = "price_effective"

            case discount

            case priceMarked = "price_marked"

            case hsnCodeId = "hsn_code_id"

            case amountPaid = "amount_paid"

            case itemId = "item_id"

            case avlQty = "avl_qty"

            case pdfLinks = "pdf_links"

            case itemSize = "item_size"

            case transferPrice = "transfer_price"

            case modifiedOn = "modified_on"

            case deliveryCharge = "delivery_charge"

            case fyndStoreId = "fynd_store_id"

            case sku

            case companyId = "company_id"

            case identifier

            case affiliateStoreId = "affiliate_store_id"

            case unitPrice = "unit_price"

            case id = "_id"

            case affiliateMeta = "affiliate_meta"

            case quantity
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.storeId = storeId

            self.sellerIdentifier = sellerIdentifier

            self.priceEffective = priceEffective

            self.discount = discount

            self.priceMarked = priceMarked

            self.hsnCodeId = hsnCodeId

            self.amountPaid = amountPaid

            self.itemId = itemId

            self.avlQty = avlQty

            self.pdfLinks = pdfLinks

            self.itemSize = itemSize

            self.transferPrice = transferPrice

            self.modifiedOn = modifiedOn

            self.deliveryCharge = deliveryCharge

            self.fyndStoreId = fyndStoreId

            self.sku = sku

            self.companyId = companyId

            self.identifier = identifier

            self.affiliateStoreId = affiliateStoreId

            self.unitPrice = unitPrice

            self.id = id

            self.affiliateMeta = affiliateMeta

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            discount = try container.decode(Double.self, forKey: .discount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemId = try container.decode(Int.self, forKey: .itemId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            itemSize = try container.decode(String.self, forKey: .itemSize)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sku = try container.decode(String.self, forKey: .sku)

            companyId = try container.decode(Int.self, forKey: .companyId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            id = try container.decode(String.self, forKey: .id)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            quantity = try container.decode(Int.self, forKey: .quantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
