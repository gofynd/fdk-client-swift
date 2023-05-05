

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var amountPaid: Double

        public var priceMarked: Double

        public var avlQty: Int

        public var modifiedOn: String

        public var affiliateStoreId: String

        public var discount: Double

        public var pdfLinks: MarketPlacePdf?

        public var unitPrice: Double

        public var quantity: Int

        public var identifier: [String: Any]

        public var storeId: Int

        public var sellerIdentifier: String

        public var companyId: Int

        public var fyndStoreId: String

        public var id: String

        public var priceEffective: Double

        public var hsnCodeId: String

        public var deliveryCharge: Double

        public var sku: String

        public var itemId: Int

        public var itemSize: String

        public var transferPrice: Int

        public var affiliateMeta: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case priceMarked = "price_marked"

            case avlQty = "avl_qty"

            case modifiedOn = "modified_on"

            case affiliateStoreId = "affiliate_store_id"

            case discount

            case pdfLinks = "pdf_links"

            case unitPrice = "unit_price"

            case quantity

            case identifier

            case storeId = "store_id"

            case sellerIdentifier = "seller_identifier"

            case companyId = "company_id"

            case fyndStoreId = "fynd_store_id"

            case id = "_id"

            case priceEffective = "price_effective"

            case hsnCodeId = "hsn_code_id"

            case deliveryCharge = "delivery_charge"

            case sku

            case itemId = "item_id"

            case itemSize = "item_size"

            case transferPrice = "transfer_price"

            case affiliateMeta = "affiliate_meta"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.amountPaid = amountPaid

            self.priceMarked = priceMarked

            self.avlQty = avlQty

            self.modifiedOn = modifiedOn

            self.affiliateStoreId = affiliateStoreId

            self.discount = discount

            self.pdfLinks = pdfLinks

            self.unitPrice = unitPrice

            self.quantity = quantity

            self.identifier = identifier

            self.storeId = storeId

            self.sellerIdentifier = sellerIdentifier

            self.companyId = companyId

            self.fyndStoreId = fyndStoreId

            self.id = id

            self.priceEffective = priceEffective

            self.hsnCodeId = hsnCodeId

            self.deliveryCharge = deliveryCharge

            self.sku = sku

            self.itemId = itemId

            self.itemSize = itemSize

            self.transferPrice = transferPrice

            self.affiliateMeta = affiliateMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            id = try container.decode(String.self, forKey: .id)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sku = try container.decode(String.self, forKey: .sku)

            itemId = try container.decode(Int.self, forKey: .itemId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var amountPaid: Double

        public var priceMarked: Double

        public var avlQty: Int

        public var modifiedOn: String

        public var affiliateStoreId: String

        public var discount: Double

        public var pdfLinks: MarketPlacePdf?

        public var unitPrice: Double

        public var quantity: Int

        public var identifier: [String: Any]

        public var storeId: Int

        public var sellerIdentifier: String

        public var companyId: Int

        public var fyndStoreId: String

        public var id: String

        public var priceEffective: Double

        public var hsnCodeId: String

        public var deliveryCharge: Double

        public var sku: String

        public var itemId: Int

        public var itemSize: String

        public var transferPrice: Int

        public var affiliateMeta: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case priceMarked = "price_marked"

            case avlQty = "avl_qty"

            case modifiedOn = "modified_on"

            case affiliateStoreId = "affiliate_store_id"

            case discount

            case pdfLinks = "pdf_links"

            case unitPrice = "unit_price"

            case quantity

            case identifier

            case storeId = "store_id"

            case sellerIdentifier = "seller_identifier"

            case companyId = "company_id"

            case fyndStoreId = "fynd_store_id"

            case id = "_id"

            case priceEffective = "price_effective"

            case hsnCodeId = "hsn_code_id"

            case deliveryCharge = "delivery_charge"

            case sku

            case itemId = "item_id"

            case itemSize = "item_size"

            case transferPrice = "transfer_price"

            case affiliateMeta = "affiliate_meta"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.amountPaid = amountPaid

            self.priceMarked = priceMarked

            self.avlQty = avlQty

            self.modifiedOn = modifiedOn

            self.affiliateStoreId = affiliateStoreId

            self.discount = discount

            self.pdfLinks = pdfLinks

            self.unitPrice = unitPrice

            self.quantity = quantity

            self.identifier = identifier

            self.storeId = storeId

            self.sellerIdentifier = sellerIdentifier

            self.companyId = companyId

            self.fyndStoreId = fyndStoreId

            self.id = id

            self.priceEffective = priceEffective

            self.hsnCodeId = hsnCodeId

            self.deliveryCharge = deliveryCharge

            self.sku = sku

            self.itemId = itemId

            self.itemSize = itemSize

            self.transferPrice = transferPrice

            self.affiliateMeta = affiliateMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            id = try container.decode(String.self, forKey: .id)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            sku = try container.decode(String.self, forKey: .sku)

            itemId = try container.decode(Int.self, forKey: .itemId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)
        }
    }
}
