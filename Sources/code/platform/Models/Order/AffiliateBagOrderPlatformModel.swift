

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sellerIdentifier: String

        public var deliveryCharge: Double

        public var itemSize: String

        public var avlQty: Int

        public var storeId: Int

        public var companyId: Int

        public var affiliateMeta: [String: Any]

        public var itemId: Int

        public var amountPaid: Double

        public var sku: String

        public var identifier: [String: Any]

        public var quantity: Int

        public var transferPrice: Int

        public var priceEffective: Double

        public var priceMarked: Double

        public var affiliateStoreId: String

        public var id: String

        public var pdfLinks: MarketPlacePdf?

        public var unitPrice: Double

        public var discount: Double

        public var hsnCodeId: String

        public var modifiedOn: String

        public var fyndStoreId: String

        public enum CodingKeys: String, CodingKey {
            case sellerIdentifier = "seller_identifier"

            case deliveryCharge = "delivery_charge"

            case itemSize = "item_size"

            case avlQty = "avl_qty"

            case storeId = "store_id"

            case companyId = "company_id"

            case affiliateMeta = "affiliate_meta"

            case itemId = "item_id"

            case amountPaid = "amount_paid"

            case sku

            case identifier

            case quantity

            case transferPrice = "transfer_price"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case affiliateStoreId = "affiliate_store_id"

            case id = "_id"

            case pdfLinks = "pdf_links"

            case unitPrice = "unit_price"

            case discount

            case hsnCodeId = "hsn_code_id"

            case modifiedOn = "modified_on"

            case fyndStoreId = "fynd_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sellerIdentifier = sellerIdentifier

            self.deliveryCharge = deliveryCharge

            self.itemSize = itemSize

            self.avlQty = avlQty

            self.storeId = storeId

            self.companyId = companyId

            self.affiliateMeta = affiliateMeta

            self.itemId = itemId

            self.amountPaid = amountPaid

            self.sku = sku

            self.identifier = identifier

            self.quantity = quantity

            self.transferPrice = transferPrice

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.affiliateStoreId = affiliateStoreId

            self.id = id

            self.pdfLinks = pdfLinks

            self.unitPrice = unitPrice

            self.discount = discount

            self.hsnCodeId = hsnCodeId

            self.modifiedOn = modifiedOn

            self.fyndStoreId = fyndStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            storeId = try container.decode(Int.self, forKey: .storeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemId = try container.decode(Int.self, forKey: .itemId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sku = try container.decode(String.self, forKey: .sku)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            id = try container.decode(String.self, forKey: .id)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sellerIdentifier: String

        public var deliveryCharge: Double

        public var itemSize: String

        public var avlQty: Int

        public var storeId: Int

        public var companyId: Int

        public var affiliateMeta: [String: Any]

        public var itemId: Int

        public var amountPaid: Double

        public var sku: String

        public var identifier: [String: Any]

        public var quantity: Int

        public var transferPrice: Int

        public var priceEffective: Double

        public var priceMarked: Double

        public var affiliateStoreId: String

        public var id: String

        public var pdfLinks: MarketPlacePdf?

        public var unitPrice: Double

        public var discount: Double

        public var hsnCodeId: String

        public var modifiedOn: String

        public var fyndStoreId: String

        public enum CodingKeys: String, CodingKey {
            case sellerIdentifier = "seller_identifier"

            case deliveryCharge = "delivery_charge"

            case itemSize = "item_size"

            case avlQty = "avl_qty"

            case storeId = "store_id"

            case companyId = "company_id"

            case affiliateMeta = "affiliate_meta"

            case itemId = "item_id"

            case amountPaid = "amount_paid"

            case sku

            case identifier

            case quantity

            case transferPrice = "transfer_price"

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case affiliateStoreId = "affiliate_store_id"

            case id = "_id"

            case pdfLinks = "pdf_links"

            case unitPrice = "unit_price"

            case discount

            case hsnCodeId = "hsn_code_id"

            case modifiedOn = "modified_on"

            case fyndStoreId = "fynd_store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sellerIdentifier = sellerIdentifier

            self.deliveryCharge = deliveryCharge

            self.itemSize = itemSize

            self.avlQty = avlQty

            self.storeId = storeId

            self.companyId = companyId

            self.affiliateMeta = affiliateMeta

            self.itemId = itemId

            self.amountPaid = amountPaid

            self.sku = sku

            self.identifier = identifier

            self.quantity = quantity

            self.transferPrice = transferPrice

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.affiliateStoreId = affiliateStoreId

            self.id = id

            self.pdfLinks = pdfLinks

            self.unitPrice = unitPrice

            self.discount = discount

            self.hsnCodeId = hsnCodeId

            self.modifiedOn = modifiedOn

            self.fyndStoreId = fyndStoreId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            storeId = try container.decode(Int.self, forKey: .storeId)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            itemId = try container.decode(Int.self, forKey: .itemId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sku = try container.decode(String.self, forKey: .sku)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            id = try container.decode(String.self, forKey: .id)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            discount = try container.decode(Double.self, forKey: .discount)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)
        }
    }
}
